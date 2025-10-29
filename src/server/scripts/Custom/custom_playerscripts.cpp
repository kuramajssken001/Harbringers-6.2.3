////////////////////////////////////////////////////////////////////////////////
//
// ██╗░░██╗░█████╗░██████╗░██████╗░██████╗░██╗███╗░░██╗░██████╗░███████╗██████╗░░██████╗
// ██║░░██║██╔══██╗██╔══██╗██╔══██╗██╔══██╗██║████╗░██║██╔════╝░██╔════╝██╔══██╗██╔════╝
// ███████║███████║██████╔╝██████╦╝██████╔╝██║██╔██╗██║██║░░██╗░█████╗░░██████╔╝╚█████╗░
// ██╔══██║██╔══██║██╔══██╗██╔══██╗██╔══██╗██║██║╚████║██║░░╚██╗██╔══╝░░██╔══██╗░╚═══██╗
// ██║░░██║██║░░██║██║░░██║██████╦╝██║░░██║██║██║░╚███║╚██████╔╝███████╗██║░░██║██████╔╝
// ╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚═╝╚═════╝░╚═╝░░╚═╝╚═╝╚═╝░░╚══╝░╚═════╝░╚══════╝╚═╝░░╚═╝╚═════╝░
//
//    Harbringers
// Warlords of Draenor
////////////////////////////////////////////////////////////////////////////////

#include "ScriptPCH.h"
#include "ScriptMgr.h"
#include "Config.h"
#include "Chat.h"

class PlayerScript_meta_achievement_midsummer : public PlayerScript
{
    public:
        PlayerScript_meta_achievement_midsummer() : PlayerScript("PlayerScript_meta_achievement_midsummer") { }

        enum eDatas
        {
            BurningHotPoleDance = 271,
            TorchJuggler = 272,
            KingOfTheFireFestival = 1145,
            IceTheFrostLord = 263,
            MaxAchievements = 4,
            DesacrationOfTheAlliance = 1037,
            DesacrationOfTheHorde = 1035,
            TheFiresOfAzerothX = 1036,
            TheFiresOfAzerothY = 1034,
            TheFlameWarden = 1038,
            TheFlameKeeper = 1039
        };

        std::array<uint32, eDatas::MaxAchievements> m_Achievements =
        { {
            eDatas::BurningHotPoleDance,
            eDatas::TorchJuggler,
            eDatas::KingOfTheFireFestival,
            eDatas::IceTheFrostLord
        } };

        void OnAchievementEarned(Player* p_Player, AchievementEntry const* p_Achievement, bool& p_SendAchievement, bool p_After) override
        {
            if (!p_Player ||!p_Achievement)
                return;

            bool l_AllCompleted = true;

            for (uint32 l_AchievementID : m_Achievements)
            {
                if (!p_Player->GetAchievementMgr().HasAchieved(l_AchievementID))
                    l_AllCompleted = false;
            }

            if (!p_Player->GetAchievementMgr().HasAchieved(eDatas::DesacrationOfTheHorde) && !p_Player->GetAchievementMgr().HasAchieved(eDatas::DesacrationOfTheAlliance))
                l_AllCompleted = false;

            if (!p_Player->GetAchievementMgr().HasAchieved(eDatas::TheFiresOfAzerothY) && !p_Player->GetAchievementMgr().HasAchieved(eDatas::TheFiresOfAzerothX))
                l_AllCompleted = false;

            if (!p_After)
            {
                if ((p_Achievement == sAchievementStore.LookupEntry(eDatas::TheFlameKeeper) || p_Achievement == sAchievementStore.LookupEntry(eDatas::TheFlameWarden)) && !l_AllCompleted)
                    p_SendAchievement = false;
            }
            else
            {
                if (l_AllCompleted)
                {
                    if (!p_Player->GetAchievementMgr().HasAchieved(eDatas::TheFlameKeeper))
                        p_Player->CompletedAchievement(sAchievementStore.LookupEntry(eDatas::TheFlameKeeper));
                    if (!p_Player->GetAchievementMgr().HasAchieved(eDatas::TheFlameWarden))
                        p_Player->CompletedAchievement(sAchievementStore.LookupEntry(eDatas::TheFlameWarden));
                }
            }
        }
};

class multi_item : public ItemScript
{
public:
    multi_item() : ItemScript("multi_item") {}

    bool OnUse(Player* player, Item* item, SpellCastTargets const&)
    {
        if (!player->isInCombat())
        {
            OnGossipHello(player, item);
            return true;
        }
        else
            return false;
    }

    bool OnGossipHello(Player* player, Item* pitem)
    {
        sObjectMgr->LoadMultiItemMenu(0, player, pitem);
        return true;
    }

    bool OnItemGossipSelect(Player* player, Item* pitem, uint32 uiSender, uint32 uiAction)
    {
        if (uiAction == 1900)
        {
            player->PlayerTalkClass->ClearMenus();
            sObjectMgr->LoadMultiItemMenu(0, player, pitem);
            return true;
        }
        player->PlayerTalkClass->ClearMenus();
        sObjectMgr->RunMultiItemMenu(uiAction, uiSender, player, pitem);
        return true;
    }
};

#ifndef __clang_analyzer__
void AddSC_CustomPlayerscripts()
{
    new PlayerScript_meta_achievement_midsummer();
    new multi_item();
}
#endif

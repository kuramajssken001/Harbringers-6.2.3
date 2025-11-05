#include "ResearchSiteIndex.h"
#include "DB2Structure.h"
#include "DB2Stores.h"

POIidToPointsMap poiPointsById;
std::unordered_map<MapZoneKey, uint32, MapZoneKeyHash> zoneLevelMap;

void BuildPOIPointsIndex()
{
    poiPointsById.clear();
    uint32 rows = sQuestPOIPointStore.GetNumRows();
    for (uint32 i = 0; i < rows; ++i)
        if (QuestPOIPointEntry const* poi = sQuestPOIPointStore.LookupEntry(i))
            poiPointsById.emplace(poi->ID, poi);
}

void BuildZoneLevelIndex()
{
    zoneLevelMap.clear();
    uint32 rows = sAreaStore.GetNumRows();
    for (uint32 i = 0; i < rows; ++i)
        if (AreaTableEntry const* area = sAreaStore.LookupEntry(i))
            if (area->ParentAreaID)
                zoneLevelMap[{area->ContinentID, area->ParentAreaID}] = area->ExplorationLevel;
}

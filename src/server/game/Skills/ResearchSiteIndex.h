#ifndef RESEARCH_SITE_INDEX_H_
#define RESEARCH_SITE_INDEX_H_

#include "Common.h"
#include <unordered_map>
#include <unordered_set>

struct QuestPOIPointEntry;
struct AreaTableEntry;

using POIidToPointsMap = std::unordered_multimap<uint32, QuestPOIPointEntry const*>;

struct MapZoneKey
{
    uint32 map;
    uint32 zone;
};
inline bool operator==(MapZoneKey const& a, MapZoneKey const& b)
{
    return a.map == b.map && a.zone == b.zone;
}
struct MapZoneKeyHash
{
    std::size_t operator()(MapZoneKey const& k) const noexcept
    {
        return std::hash<uint64>()(((uint64)k.map << 32) | k.zone);
    }
};

extern POIidToPointsMap poiPointsById; 
extern std::unordered_map<MapZoneKey, uint32, MapZoneKeyHash> zoneLevelMap;

void BuildPOIPointsIndex();
void BuildZoneLevelIndex();

#endif

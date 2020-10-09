// SPDX-License-Identifier: MIT
pragma solidity 0.7.1;

/*
Numeric traits by possition in the array:
energy
aggressiveeness
spookiness
ethereality
brainSize
eyeShape
eyeColor
*/

struct Aavegotchi {
    string name;
    uint8[] numericTraits;
    uint256 randomNumber;
    bytes32[1000] emptySlots;
    address owner;
    uint32 ownerEnumerationIndex;
    // track status of aavegotchi
    // 0 == portal, 1 = open portal, 2 = Aavegotchi
    uint8 status;
    address collateral;
}

struct SVGLayer {
    address svgLayersContract;
    uint16 offset;
    uint16 size;
}

struct AppStorage {
    address[] collaterals;
    mapping(address => uint256) collateralIndexes;
    SVGLayer[] aavegotchiLayersSVG;
    SVGLayer[] wearablesSVG;
    SVGLayer[] itemsSVG;
    // contractAddress => nftId  => id => balance
    mapping(address => mapping(uint256 => mapping(uint256 => uint256))) nftBalances;
    // owner => (id => balance)
    mapping(address => mapping(uint256 => uint256)) wearables;
    // owner => aavegotchiOwnerEnumeration
    mapping(address => uint256[]) aavegotchiOwnerEnumeration;
    mapping(uint256 => Aavegotchi) aavegotchis;
    // owner => (operator => bool)
    mapping(address => mapping(address => bool)) operators;
    mapping(uint256 => address) approved;
    mapping(string => bool) aavegotchiNamesUsed;
    bytes32[1000] emptySlots;
    // owner of the contract
    address contractOwner;
    uint32 totalSupply;
    address ghstContract;
}
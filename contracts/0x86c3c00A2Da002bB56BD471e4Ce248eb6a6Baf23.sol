contract main {


// =======================  Init code  ======================


uint256 stor3;
uint256 stor4;
uint256 stor6;
uint256 stor10;

function _fallback() payable {
    stor3 = 100 * 10^6
    stor4 = 10^17
    stor6 = 50 * 10^6
    stor10 = msg.sender or Mask(96, 160, stor10)
    return code.data[64 len 774]
}



// =====================  Runtime code  =====================


uint256 xauToEur;
uint256 goldToEur;
uint256 mintingDataUpdatedAtBlock;
uint256 xaurForGasLimit;
uint256 weiForXau;
uint256 gasForXaurDataUpdateAtBlock;
uint256 goldFee;
uint256 goldFeeDataUpdatedAtBlock;
address owner;
uint256 stor8;
address curatorAddress;
uint256 stor9;
address devAddress;

function goldFeeDataUpdatedAtBlock() payable {
    return goldFeeDataUpdatedAtBlock
}

function weiForXau() payable {
    return weiForXau
}

function gasForXaurDataUpdateAtBlock() payable {
    return gasForXaurDataUpdateAtBlock
}

function goldFee() payable {
    return goldFee
}

function owner() payable {
    return address(owner)
}

function dev() payable {
    return devAddress
}

function goldToEur() payable {
    return goldToEur
}

function xaurForGasLimit() payable {
    return xaurForGasLimit
}

function mintingDataUpdatedAtBlock() payable {
    return mintingDataUpdatedAtBlock
}

function curator() payable {
    return address(curatorAddress)
}

function xauToEur() payable {
    return xauToEur
}

function _fallback() payable {
    revert 
}

function setOwner(address arg1) payable {
    if devAddress != msg.sender:
        return 0
    uint256(stor8) = arg1 or Mask(96, 160, uint256(stor8))
    return 1
}

function setProxyCurrator(address arg1) payable {
    if address(owner) != msg.sender:
        if devAddress != msg.sender:
            return 0
    uint256(stor9) = arg1 or Mask(96, 160, uint256(stor9))
    return 1
}

function updateGoldFeeData(uint256 arg1) payable {
    if address(curatorAddress) != msg.sender:
        if devAddress != msg.sender:
            return 0
    goldFee = arg1
    goldFeeDataUpdatedAtBlock = block.number
    return 1
}

function updateMintingData(uint256 arg1, uint256 arg2) payable {
    if address(curatorAddress) != msg.sender:
        if devAddress != msg.sender:
            return 0
    xauToEur = arg1
    goldToEur = arg2
    mintingDataUpdatedAtBlock = block.number
    return 1
}

function updateGasForXaurData(uint256 arg1, uint256 arg2) payable {
    if address(curatorAddress) != msg.sender:
        if devAddress != msg.sender:
            return 0
    xaurForGasLimit = arg1
    weiForXau = arg2
    gasForXaurDataUpdateAtBlock = block.number
    return 1
}



}

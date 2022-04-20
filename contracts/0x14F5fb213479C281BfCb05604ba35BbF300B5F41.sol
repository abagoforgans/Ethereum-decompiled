contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint256 stor3;

function _fallback() {
    stor0 = msg.sender
    require stor0 == msg.sender
    stor2 = code.data[1905 len 32]
    stor3 = code.data[1937 len 32]
    return code.data[163 len 1742]
}



// =====================  Runtime code  =====================


const TIER2_PERCENT = 4

const TIER3_PERCENT = 5

const TIER1_PERCENT = 3


address owner;
address newOwner;
uint256 tierTwoMin;
uint256 tierThreeMin;
mapping of struct affiliate;

function owner() {
    return owner
}

function isAffiliateValid(address arg1) {
    emit AffiliateReceived(affiliate[address(arg1)].field_0, address(arg1), bool(affiliate[address(arg1)].field_160));
    return bool(affiliate[address(arg1)].field_160)
}

function getAffiliate(address arg1) {
    return affiliate[address(arg1)].field_0
}

function newOwner() {
    return newOwner
}

function tierThreeMin() {
    return tierThreeMin
}

function tierTwoMin() {
    return tierTwoMin
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function setTiers(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    tierTwoMin = arg1
    tierThreeMin = arg2
}

function addAffiliate(address arg1, address arg2) {
    require owner == msg.sender
    affiliate[address(arg1)].field_0 = arg2
    affiliate[address(arg1)].field_160 = 1
}

function applyAffiliate(address arg1, uint256 arg2, uint256 arg3) {
    if not affiliate[address(arg1)].field_0:
        return 0
    if arg3 < tierTwoMin:
        if not arg2:
            return 3 * arg2 / 100, arg2 / 100
        if arg2:
            if 3 * arg2 / arg2 == 3:
                return 3 * arg2 / 100, arg2 / 100
    else:
        if arg3 >= tierThreeMin:
            if not arg2:
                return 5 * arg2 / 100, arg2 / 100
            if arg2:
                if 5 * arg2 / arg2 == 5:
                    return 5 * arg2 / 100, arg2 / 100
        else:
            if not arg2:
                return 4 * arg2 / 100, arg2 / 100
            if arg2:
                if 4 * arg2 / arg2 == 4:
                    return 4 * arg2 / 100, arg2 / 100
    revert
}



}

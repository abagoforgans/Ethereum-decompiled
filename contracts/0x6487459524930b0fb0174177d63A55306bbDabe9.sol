contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;

function _fallback() payable {
    stor2 = 8
    stor0 = msg.sender
    return code.data[88 len 1598]
}



// =====================  Runtime code  =====================


const isPricingStrategy = 1


address owner;
mapping of uint256 preico;
uint256 stor2;

function owner() {
    return owner
}

function preicoAddresses(address arg1) {
    return preico[arg1]
}

function _fallback() payable {
    revert
}

function isPresalePurchase(address arg1) {
    return (preico[address(arg1)] > 0)
}

function setPreicoAddress(address arg1, uint256 arg2) {
    require msg.sender == owner
    preico[address(arg1)] = arg2
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_cfe9f778(?) {
    if not arg1:
        return 0
    if preico[address(arg2)] <= 0:
        if arg1:
            if arg1 * 10^stor2 / arg1 == 10^stor2:
                if not arg1 * 10^stor2:
                    return 0
                if arg1 * 10^stor2:
                    if 3000 * arg1 * 10^stor2 / arg1 * 10^stor2 == 3000:
                        return (3000 * arg1 * 10^stor2 / 10^18)
    else:
        if arg1:
            if arg1 * 10^stor2 / arg1 == 10^stor2:
                if not arg1 * 10^stor2:
                    return 0
                if arg1 * 10^stor2:
                    if arg1 * 10^stor2 * preico[address(arg2)] / arg1 * 10^stor2 == preico[address(arg2)]:
                        return (arg1 * 10^stor2 * preico[address(arg2)] / 10^18)
    revert
}



}

contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint8 stor6;
uint256 stor7;

function _fallback() payable {
    stor6 = 0
    require not msg.value
    stor0 = msg.sender
    stor1 = 0x420335d3deef2d5b87524ff9d0fb441f71ea621f
    stor6 = 0
    stor7 = 0
    return code.data[241 len 5788]
}



// =====================  Runtime code  =====================


const firstDueDate = (429024 * 24 * 3600)

const secondDueDate = (433392 * 24 * 3600)

const thirdDueDate = (437784 * 24 * 3600)

const tokenAddress = 0x420335d3deef2d5b87524ff9d0fb441f71ea621f


address owner;
address stor1;
mapping of uint256 myBalance;
mapping of uint256 stor3;
mapping of uint256 stor4;
mapping of uint256 stor5;
uint8 stor6;
uint256 claimable;
mapping of address stor8;
mapping of uint256 stor9;

function initialized() {
    return bool(stor6)
}

function totalCommitted() {
    return claimable
}

function getMyBalance() {
    require myBalance[address(msg.sender)] > 0
    return myBalance[address(msg.sender)]
}

function owner() {
    return owner
}

function getClaimable() {
    return claimable
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function updateChangeAttemptCount(address arg1) {
    require msg.sender == owner
    stor9[stor8[address(arg1)]] = 0
}

function getBalance() {
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function initialize() {
    require msg.sender == owner
    require claimable > 0
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require claimable <= ext_call.return_data[0]
    if not stor6:
        stor6 = 1
}

function addVestingUser(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not stor6
    myBalance[address(arg1)] = arg2
    stor3[address(arg1)] = arg2 / 3
    stor4[address(arg1)] = arg2 / 3
    stor5[address(arg1)] = arg2 - stor3[address(arg1)] - stor4[address(arg1)]
    stor8[address(arg1)] = arg1
    stor9[address(arg1)] = 0
    claimable = claimable + arg2 - myBalance[address(arg1)]
    emit AddUser(address(arg1), arg2);
}

function changeClaimAddress(address arg1) {
    require myBalance[address(msg.sender)] > 0
    require stor9[stor8[address(msg.sender)]] + 1 < 5
    stor9[stor8[address(msg.sender)]]++
    myBalance[address(msg.sender)] = 0
    myBalance[address(arg1)] = myBalance[address(msg.sender)]
    stor3[address(msg.sender)] = 0
    stor3[address(arg1)] = stor3[address(msg.sender)]
    stor4[address(msg.sender)] = 0
    stor4[address(arg1)] = stor4[address(msg.sender)]
    stor5[address(msg.sender)] = 0
    stor5[address(arg1)] = stor5[address(msg.sender)]
    stor8[address(arg1)] = stor8[address(msg.sender)]
    emit ChangeClaimAddress(msg.sender, arg1);
}

function _fallback() payable {
    require stor6
    require block.timestamp > 429024 * 24 * 3600
    require myBalance[address(msg.sender)] > 0
    require block.timestamp > 429024 * 24 * 3600
    if stor3[address(msg.sender)] <= 0:
        require block.timestamp > 433392 * 24 * 3600
        if stor4[address(msg.sender)] <= 0:
            require block.timestamp > 437784 * 24 * 3600
            require stor5[address(msg.sender)] > 0
            stor5[address(msg.sender)] = 0
            myBalance[address(msg.sender)] -= stor5[address(msg.sender)]
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, stor5[address(msg.sender)]
            require ext_call.success
            claimable -= stor5[address(msg.sender)]
        else:
            stor4[address(msg.sender)] = 0
            if block.timestamp <= 437784 * 24 * 3600:
                require stor4[address(msg.sender)] > 0
                myBalance[address(msg.sender)] -= stor4[address(msg.sender)]
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, stor4[address(msg.sender)]
                require ext_call.success
                claimable -= stor4[address(msg.sender)]
            else:
                if stor5[address(msg.sender)] <= 0:
                    require stor4[address(msg.sender)] > 0
                    myBalance[address(msg.sender)] -= stor4[address(msg.sender)]
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, stor4[address(msg.sender)]
                    require ext_call.success
                    claimable -= stor4[address(msg.sender)]
                else:
                    stor5[address(msg.sender)] = 0
                    require stor4[address(msg.sender)] + stor5[address(msg.sender)] > 0
                    myBalance[address(msg.sender)] = myBalance[address(msg.sender)] - stor4[address(msg.sender)] - stor5[address(msg.sender)]
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, stor4[address(msg.sender)] + stor5[address(msg.sender)]
                    require ext_call.success
                    claimable = claimable - stor4[address(msg.sender)] - stor5[address(msg.sender)]
    else:
        stor3[address(msg.sender)] = 0
        if block.timestamp <= 433392 * 24 * 3600:
            require stor3[address(msg.sender)] > 0
            myBalance[address(msg.sender)] -= stor3[address(msg.sender)]
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, stor3[address(msg.sender)]
            require ext_call.success
            claimable -= stor3[address(msg.sender)]
        else:
            if stor4[address(msg.sender)] <= 0:
                if block.timestamp <= 437784 * 24 * 3600:
                    require stor3[address(msg.sender)] > 0
                    myBalance[address(msg.sender)] -= stor3[address(msg.sender)]
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, stor3[address(msg.sender)]
                    require ext_call.success
                    claimable -= stor3[address(msg.sender)]
                else:
                    if stor5[address(msg.sender)] <= 0:
                        require stor3[address(msg.sender)] > 0
                        myBalance[address(msg.sender)] -= stor3[address(msg.sender)]
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, stor3[address(msg.sender)]
                        require ext_call.success
                        claimable -= stor3[address(msg.sender)]
                    else:
                        stor5[address(msg.sender)] = 0
                        require stor3[address(msg.sender)] + stor5[address(msg.sender)] > 0
                        myBalance[address(msg.sender)] = myBalance[address(msg.sender)] - stor3[address(msg.sender)] - stor5[address(msg.sender)]
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, stor3[address(msg.sender)] + stor5[address(msg.sender)]
                        require ext_call.success
                        claimable = claimable - stor3[address(msg.sender)] - stor5[address(msg.sender)]
            else:
                stor4[address(msg.sender)] = 0
                if block.timestamp <= 437784 * 24 * 3600:
                    require stor3[address(msg.sender)] + stor4[address(msg.sender)] > 0
                    myBalance[address(msg.sender)] = myBalance[address(msg.sender)] - stor3[address(msg.sender)] - stor4[address(msg.sender)]
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, stor3[address(msg.sender)] + stor4[address(msg.sender)]
                    require ext_call.success
                    claimable = claimable - stor3[address(msg.sender)] - stor4[address(msg.sender)]
                else:
                    if stor5[address(msg.sender)] <= 0:
                        require stor3[address(msg.sender)] + stor4[address(msg.sender)] > 0
                        myBalance[address(msg.sender)] = myBalance[address(msg.sender)] - stor3[address(msg.sender)] - stor4[address(msg.sender)]
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, stor3[address(msg.sender)] + stor4[address(msg.sender)]
                        require ext_call.success
                        claimable = claimable - stor3[address(msg.sender)] - stor4[address(msg.sender)]
                    else:
                        stor5[address(msg.sender)] = 0
                        require stor3[address(msg.sender)] + stor4[address(msg.sender)] + stor5[address(msg.sender)] > 0
                        myBalance[address(msg.sender)] = myBalance[address(msg.sender)] - stor3[address(msg.sender)] - stor4[address(msg.sender)] - stor5[address(msg.sender)]
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, stor3[address(msg.sender)] + stor4[address(msg.sender)] + stor5[address(msg.sender)]
                        require ext_call.success
                        claimable = claimable - stor3[address(msg.sender)] - stor4[address(msg.sender)] - stor5[address(msg.sender)]
}



}

contract main {


// =======================  Init code  ======================


address stor0;
address stor3;
uint256 stor7;

function _fallback() payable {
    stor7 = 0
    require not msg.value
    stor3 = msg.sender
    stor0 = code.data[3877 len 20]
    return code.data[117 len 3748]
}



// =====================  Runtime code  =====================


address stor0;
mapping of uint256 contributions;
uint256 contributedTotal;
address owner;
address newOwner;
mapping of struct presaleAllocation;
array of address stor6;
uint256 sub_bca51c1a;

function contributions(address arg1) {
    return contributions[arg1]
}

function contributedTotal() {
    return contributedTotal
}

function owner() {
    return owner
}

function getPresaleAllocation(address arg1) {
    require bool(presaleAllocation[address(arg1)].field_256) == 1
    return presaleAllocation[address(arg1)].field_0
}

function sub_bca51c1a(?) {
    return sub_bca51c1a
}

function newOwner() {
    return newOwner
}

function getContributionOf(address arg1) {
    return contributions[address(arg1)]
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    newOwner = arg1
}

function acceptOwnership() {
    require newOwner == msg.sender
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
}

function setDepositAddressVerify() {
    require ext_code.size(stor0)
    call stor0.0x179c537e with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
}

function finaliseFunding() {
    require ext_code.size(stor0)
    call stor0.0x4aa83079 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_code.size(stor0)
        call stor0.0x6932c9c5 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        call ext_call.return_data[12 len 20] with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require 1 == bool(ext_call.success)
        emit FinaliseSale(address(this.address), msg.sender, eth.balance(this.address));
}

function addPresaleAllocation(address arg1, uint256 arg2) {
    require owner == msg.sender
    if arg2 > 0:
        require sub_bca51c1a + arg2 >= arg2
        require ext_code.size(stor0)
        call stor0.0xc11301d4 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        if ext_call.return_data[0] >= sub_bca51c1a + arg2:
            require ext_code.size(stor0)
            call stor0.0xf612a62d with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            if not ext_call.return_data[0]:
                if presaleAllocation[address(arg1)].field_256:
                    require arg2 + presaleAllocation[address(arg1)].field_0 >= presaleAllocation[address(arg1)].field_0
                    presaleAllocation[address(arg1)].field_0 += arg2
                else:
                    presaleAllocation[address(arg1)].field_0 = arg2
                    presaleAllocation[address(arg1)].field_256 = 1
                    stor6.length++
                    if not stor6.length <= stor6.length + 1:
                        idx = stor6.length + 1
                        while stor6.length > idx:
                            uint256(stor6[idx]) = 0
                            idx = idx + 1
                            continue 
                    address(stor6[stor6.length]) = arg1
                require arg2 + sub_bca51c1a >= sub_bca51c1a
                sub_bca51c1a += arg2
}

function _fallback() payable {
    require bool(presaleAllocation[address(msg.sender)].field_256) == 1
    require ext_code.size(stor0)
    call stor0.0x99f16c6e with:
         gas gas_remaining - 710 wei
        args msg.value
    require ext_call.success
    if ext_call.return_data[0]:
        require not contributions[address(msg.sender)]
        require msg.value >= presaleAllocation[address(msg.sender)].field_0
        require msg.value + contributions[address(msg.sender)] >= contributions[address(msg.sender)]
        contributions[address(msg.sender)] += msg.value
        require msg.value + contributedTotal >= contributedTotal
        contributedTotal += msg.value
        emit Contribute(address(this.address), msg.sender, msg.value);
        if contributions[address(msg.sender)] > presaleAllocation[address(msg.sender)].field_0:
            require presaleAllocation[address(msg.sender)].field_0 <= contributions[address(msg.sender)]
            if contributions[address(msg.sender)] - presaleAllocation[address(msg.sender)].field_0 > 0:
                require contributions[address(msg.sender)] - presaleAllocation[address(msg.sender)].field_0 <= contributions[address(msg.sender)]
                contributions[address(msg.sender)] = presaleAllocation[address(msg.sender)].field_0
                require contributions[address(msg.sender)] - presaleAllocation[address(msg.sender)].field_0 <= contributedTotal
                contributedTotal = contributedTotal - contributions[address(msg.sender)] + presaleAllocation[address(msg.sender)].field_0
                call msg.sender with:
                   value contributions[address(msg.sender)] - presaleAllocation[address(msg.sender)].field_0 wei
                     gas 2300 * is_zero(value) wei
                require 1 == bool(ext_call.success)
                emit Refund(address(this.address), msg.sender, contributions[address(msg.sender)] - presaleAllocation[address(msg.sender)].field_0);
        require ext_code.size(stor0)
        call stor0.0xff5bc8a7 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(stor0)
        call stor0.0xc11301d4 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(stor0)
        call stor0.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, ext_call.return_data[0] / ext_call.return_data[0] * presaleAllocation[address(msg.sender)].field_0
        require ext_call.success
        require ext_code.size(stor0)
        call stor0.0x6932c9c5 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        call address(ext_call.return_data[0]) with:
           value presaleAllocation[address(msg.sender)].field_0 wei
             gas 2300 * is_zero(value) wei
        require 1 == bool(ext_call.success)
        emit TransferToDepositAddress(address(this.address), msg.sender, presaleAllocation[address(msg.sender)].field_0);
}



}

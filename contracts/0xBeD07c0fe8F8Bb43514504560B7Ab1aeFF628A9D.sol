contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
mapping of struct sub_7c0a5051;
uint256 sub_a6623b2e;

function sub_7c0a5051(?) {
    require calldata.size - 4 >= 32
    return sub_7c0a5051[address(arg1)].field_256
}

function owner() {
    return owner
}

function sub_a6623b2e(?) {
    return sub_a6623b2e
}

function sub_bd8cb43e(?) {
    require calldata.size - 4 >= 32
    return sub_7c0a5051[address(arg1)].field_0
}

function sub_8bb4ee77(?) {
    require msg.sender == owner
    if sub_a6623b2e:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'All withdrawals have yet to take place'
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(stor1)
        staticcall stor1.0xc1150bc7 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_3a0e6a3b(?) {
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function addTeamMember(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if sub_7c0a5051[address(arg1)].field_1024:
        revert with 0, 'Member already added'
    require sub_a6623b2e + arg2 >= sub_a6623b2e
    sub_a6623b2e += arg2
    if not arg2:
        require 0 <= arg2
        if not arg2:
            sub_7c0a5051[address(arg1)].field_0 = 0
            sub_7c0a5051[address(arg1)].field_256 = arg2
            sub_7c0a5051[address(arg1)].field_512 = 0
            sub_7c0a5051[address(arg1)].field_768 = 0
        else:
            require arg2
            require 10 * arg2 / arg2 == 10
            sub_7c0a5051[address(arg1)].field_0 = 0
            sub_7c0a5051[address(arg1)].field_256 = arg2
            sub_7c0a5051[address(arg1)].field_512 = 0
            sub_7c0a5051[address(arg1)].field_768 = 10 * arg2 / 100
    else:
        require arg2
        require 20 * arg2 / arg2 == 20
        require 20 * arg2 / 100 <= arg2
        if not arg2 - (20 * arg2 / 100):
            sub_7c0a5051[address(arg1)].field_0 = 0
            sub_7c0a5051[address(arg1)].field_256 = arg2
            sub_7c0a5051[address(arg1)].field_512 = 20 * arg2 / 100
            sub_7c0a5051[address(arg1)].field_768 = 0
        else:
            require arg2 - (20 * arg2 / 100)
            require (10 * arg2) - (10 * 20 * arg2 / 100) / arg2 - (20 * arg2 / 100) == 10
            sub_7c0a5051[address(arg1)].field_0 = 0
            sub_7c0a5051[address(arg1)].field_256 = arg2
            sub_7c0a5051[address(arg1)].field_512 = 20 * arg2 / 100
            sub_7c0a5051[address(arg1)].field_768 = (10 * arg2) - (10 * 20 * arg2 / 100) / 100
    sub_7c0a5051[address(arg1)].field_1024 = 1
    return bool(sub_7c0a5051[address(arg1)].field_1024)
}

function withdrawal(address arg1) {
    require calldata.size - 4 >= 32
    if not sub_7c0a5051[address(arg1)].field_1024:
        revert with 0, 'The team member is not found'
    if sub_7c0a5051[address(arg1)].field_256 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'There is no more tokens to transfer to this wallet'
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_7c0a5051[address(arg1)].field_0:
        if ext_call.return_data[0] < sub_7c0a5051[address(arg1)].field_512:
            revert with 0, 'The contract doesnt have founds to pay'
        if sub_7c0a5051[address(arg1)].field_0 > block.timestamp:
            revert with 0, 'You need to wait the next withdrawal period'
        if sub_7c0a5051[address(arg1)].field_0:
            require sub_7c0a5051[address(arg1)].field_0 + (1440 * 24 * 3600) >= sub_7c0a5051[address(arg1)].field_0
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), sub_7c0a5051[address(arg1)].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            sub_7c0a5051[address(arg1)].field_0 += 1440 * 24 * 3600
        else:
            require block.timestamp + (1440 * 24 * 3600) >= 1440 * 24 * 3600
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), sub_7c0a5051[address(arg1)].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            sub_7c0a5051[address(arg1)].field_0 = block.timestamp + (1440 * 24 * 3600)
        require sub_7c0a5051[address(arg1)].field_512 <= sub_7c0a5051[address(arg1)].field_256
        sub_7c0a5051[address(arg1)].field_256 -= sub_7c0a5051[address(arg1)].field_512
        require sub_7c0a5051[address(arg1)].field_512 <= sub_a6623b2e
        sub_a6623b2e -= sub_7c0a5051[address(arg1)].field_512
    else:
        if sub_7c0a5051[address(arg1)].field_768 >= sub_7c0a5051[address(arg1)].field_256:
            if ext_call.return_data[0] < sub_7c0a5051[address(arg1)].field_256:
                revert with 0, 'The contract doesnt have founds to pay'
            if sub_7c0a5051[address(arg1)].field_0 > block.timestamp:
                revert with 0, 'You need to wait the next withdrawal period'
            if sub_7c0a5051[address(arg1)].field_0:
                require sub_7c0a5051[address(arg1)].field_0 + (1440 * 24 * 3600) >= sub_7c0a5051[address(arg1)].field_0
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), sub_7c0a5051[address(arg1)].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_7c0a5051[address(arg1)].field_0 += 1440 * 24 * 3600
            else:
                require block.timestamp + (1440 * 24 * 3600) >= 1440 * 24 * 3600
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), sub_7c0a5051[address(arg1)].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_7c0a5051[address(arg1)].field_0 = block.timestamp + (1440 * 24 * 3600)
            require sub_7c0a5051[address(arg1)].field_256 <= sub_7c0a5051[address(arg1)].field_256
            sub_7c0a5051[address(arg1)].field_256 = 0
            require sub_7c0a5051[address(arg1)].field_256 <= sub_a6623b2e
            sub_a6623b2e -= sub_7c0a5051[address(arg1)].field_256
        else:
            if ext_call.return_data[0] < sub_7c0a5051[address(arg1)].field_768:
                revert with 0, 'The contract doesnt have founds to pay'
            if sub_7c0a5051[address(arg1)].field_0 > block.timestamp:
                revert with 0, 'You need to wait the next withdrawal period'
            if sub_7c0a5051[address(arg1)].field_0:
                require sub_7c0a5051[address(arg1)].field_0 + (1440 * 24 * 3600) >= sub_7c0a5051[address(arg1)].field_0
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), sub_7c0a5051[address(arg1)].field_768
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_7c0a5051[address(arg1)].field_0 += 1440 * 24 * 3600
            else:
                require block.timestamp + (1440 * 24 * 3600) >= 1440 * 24 * 3600
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), sub_7c0a5051[address(arg1)].field_768
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_7c0a5051[address(arg1)].field_0 = block.timestamp + (1440 * 24 * 3600)
            require sub_7c0a5051[address(arg1)].field_768 <= sub_7c0a5051[address(arg1)].field_256
            sub_7c0a5051[address(arg1)].field_256 -= sub_7c0a5051[address(arg1)].field_768
            require sub_7c0a5051[address(arg1)].field_768 <= sub_a6623b2e
            sub_a6623b2e -= sub_7c0a5051[address(arg1)].field_768
    return 1
}



}

contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint256 stor2;
address stor3;
address stor4;
address stor5;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function sub_a4d5c593(?) {
    require msg.sender == owner
    stor3 = arg1
    stor1 = arg2
    stor2 = arg3
    stor4 = arg4
    stor5 = arg5
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_3d03eb22(?) {
    if stor1 > 0:
        if not arg2:
            require ext_code.size(stor3)
            call stor3.0x23b872dd with:
                 gas gas_remaining wei
                args stor5, stor4, 0
        else:
            require arg2
            require arg2 * stor1 / arg2 == stor1
            require ext_code.size(stor3)
            call stor3.0x23b872dd with:
                 gas gas_remaining wei
                args stor5, stor4, arg2 * stor1 / 1000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    if stor2 > 0:
        if not arg2:
            require ext_code.size(stor3)
            call stor3.0x23b872dd with:
                 gas gas_remaining wei
                args address(arg1), stor4, 0
        else:
            require arg2
            require arg2 * stor2 / arg2 == stor2
            require ext_code.size(stor3)
            call stor3.0x23b872dd with:
                 gas gas_remaining wei
                args address(arg1), stor4, arg2 * stor2 / 1000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    return 1
}

function sub_a2d4cff5(?) {
    if stor1 > 0:
        if not arg2:
            require ext_code.size(stor3)
            call stor3.0x23b872dd with:
                 gas gas_remaining wei
                args stor5, stor4, 0
        else:
            require arg2
            require arg2 * stor1 / arg2 == stor1
            require ext_code.size(stor3)
            call stor3.0x23b872dd with:
                 gas gas_remaining wei
                args stor5, stor4, arg2 * stor1 / 1000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    if stor2 > 0:
        if not arg2:
            require ext_code.size(stor3)
            call stor3.0x23b872dd with:
                 gas gas_remaining wei
                args address(arg1), stor4, 0
        else:
            require arg2
            require arg2 * stor2 / arg2 == stor2
            require ext_code.size(stor3)
            call stor3.0x23b872dd with:
                 gas gas_remaining wei
                args address(arg1), stor4, arg2 * stor2 / 1000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    return 1
}



}

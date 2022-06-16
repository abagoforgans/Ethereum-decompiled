contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
uint8 stor2;
address sub_722d8ff0Address; offset 8
address sub_3b8d7c15Address;
array of uint256 name;
uint256 stor5;
uint256 stor6;
mapping of struct stor7;

function name() payable {
    return name[0 len name.length]
}

function isWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'Invalid address.'
    return bool(stor1[address(arg1)])
}

function sub_3b8d7c15(?) payable {
    return sub_3b8d7c15Address
}

function paused() payable {
    return bool(stor2)
}

function sub_722d8ff0(?) payable {
    return sub_722d8ff0Address
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function data() payable {
    return stor5, stor6
}

function isOwner() payable {
    return (msg.sender == owner)
}

function sub_a2aec85c(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 22, 0xfe546865206163636f756e74206e6f74206f776e65722e000000000000000000
    sub_722d8ff0Address = arg1
}

function sub_be9085c2(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 22, 0xfe546865206163636f756e74206e6f74206f776e65722e000000000000000000
    sub_3b8d7c15Address = arg1
}

function setData(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 32, 22, 0xfe546865206163636f756e74206e6f74206f776e65722e000000000000000000
    stor5 = arg1
    stor6 = arg2
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 32, 22, 0xfe546865206163636f756e74206e6f74206f776e65722e000000000000000000
    if stor2:
        revert with 0, 'The contract is not paused.'
    stor2 = 1
    emit Paused(msg.sender);
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 32, 22, 0xfe546865206163636f756e74206e6f74206f776e65722e000000000000000000
    owner = 0
    emit OwnershipTransferred(address arg1, address arg2)
    emit 0x0 
    emit 0x0 
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 32, 22, 0xfe546865206163636f756e74206e6f74206f776e65722e000000000000000000
    if not stor2:
        revert with 0, 'The contract is paused.'
    stor2 = 0
    emit Unpaused(msg.sender);
}

function renounceWhitelisted() payable {
    if not msg.sender:
        revert with 0, 'Invalid address.'
    if not stor1[address(msg.sender)]:
        revert with 0, 'The role does not exist.'
    stor1[address(msg.sender)] = 0
    emit WhitelistedRemoved(msg.sender);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 22, 0xfe546865206163636f756e74206e6f74206f776e65722e000000000000000000
    if not arg1:
        revert with 0, 'Invalid address.'
    owner = arg1
    emit OwnershipTransferred(arg1, arg1);
}

function addWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 22, 0xfe546865206163636f756e74206e6f74206f776e65722e000000000000000000
    if not arg1:
        revert with 0, 'Invalid address.'
    if stor1[address(arg1)]:
        revert with 0, 'The role already exist.'
    stor1[address(arg1)] = 1
    emit WhitelistedAdded(arg1);
}

function removeWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 22, 0xfe546865206163636f756e74206e6f74206f776e65722e000000000000000000
    if not arg1:
        revert with 0, 'Invalid address.'
    if not stor1[address(arg1)]:
        revert with 0, 'The role does not exist.'
    stor1[address(arg1)] = 0
    emit WhitelistedRemoved(arg1);
}

function addShares(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0, 'Invalid address.'
    if not stor1[address(msg.sender)]:
        revert with 0, 'The account not whitelisted.'
    if arg2 + stor6 < stor6:
        revert with 0, 'SafeMath add failed.'
    stor6 += arg2
    if arg2 + stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0:
        revert with 0, 'SafeMath add failed.'
    stor7[address(arg1)].field_0 += arg2
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(sub_722d8ff0Address)
    call sub_722d8ff0Address.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Payment failed.'
    if arg2 + stor5 < stor5:
        revert with 0, 'SafeMath add failed.'
    stor5 += arg2
}

function users(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor6 / 10^18 <= 0:
        revert with 0, 'SafeMath div failed.'
    require stor6 / 10^18
    if not stor7[address(arg1)].field_0 / 10^18:
        if 0 <= stor7[address(arg1)].field_256:
            return stor7[address(arg1)].field_0, 0, stor7[address(arg1)].field_256
        if stor7[address(arg1)].field_256 > 0:
            revert with 0, 'SafeMath sub failed.'
        return stor7[address(arg1)].field_0, -stor7[address(arg1)].field_256, stor7[address(arg1)].field_256
    if stor5 / stor6 / 10^18 * stor7[address(arg1)].field_0 / 10^18 / stor7[address(arg1)].field_0 / 10^18 != stor5 / stor6 / 10^18:
        revert with 0, 'SafeMath mul failed.'
    if stor5 / stor6 / 10^18 * stor7[address(arg1)].field_0 / 10^18 <= stor7[address(arg1)].field_256:
        return stor7[address(arg1)].field_0, 0, stor7[address(arg1)].field_256
    if stor7[address(arg1)].field_256 > stor5 / stor6 / 10^18 * stor7[address(arg1)].field_0 / 10^18:
        revert with 0, 'SafeMath sub failed.'
    return stor7[address(arg1)].field_0, 
           (stor5 / stor6 / 10^18 * stor7[address(arg1)].field_0 / 10^18) - stor7[address(arg1)].field_256,
           stor7[address(arg1)].field_256
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor2:
        revert with 0, 'The contract is not paused.'
    if stor6 / 10^18 <= 0:
        revert with 0, 'SafeMath div failed.'
    require stor6 / 10^18
    if not stor7[address(arg1)].field_0 / 10^18:
        if 0 <= stor7[address(arg1)].field_256:
            require ext_code.size(sub_722d8ff0Address)
            call sub_722d8ff0Address.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), 0
        else:
            if stor7[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath sub failed.'
            if -stor7[address(arg1)].field_256 > 0:
                if -stor7[address(arg1)].field_256 > stor7[address(arg1)].field_0:
                    revert with 0, 'SafeMath sub failed.'
                stor7[address(arg1)].field_0 += stor7[address(arg1)].field_256
                if 0 < stor7[address(arg1)].field_256:
                    revert with 0, 'SafeMath add failed.'
                stor7[address(arg1)].field_256 = 0
            require ext_code.size(sub_722d8ff0Address)
            call sub_722d8ff0Address.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), -stor7[address(arg1)].field_256
    else:
        if stor5 / stor6 / 10^18 * stor7[address(arg1)].field_0 / 10^18 / stor7[address(arg1)].field_0 / 10^18 != stor5 / stor6 / 10^18:
            revert with 0, 'SafeMath mul failed.'
        if stor5 / stor6 / 10^18 * stor7[address(arg1)].field_0 / 10^18 <= stor7[address(arg1)].field_256:
            require ext_code.size(sub_722d8ff0Address)
            call sub_722d8ff0Address.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), 0
        else:
            if stor7[address(arg1)].field_256 > stor5 / stor6 / 10^18 * stor7[address(arg1)].field_0 / 10^18:
                revert with 0, 'SafeMath sub failed.'
            if (stor5 / stor6 / 10^18 * stor7[address(arg1)].field_0 / 10^18) - stor7[address(arg1)].field_256 > 0:
                if (stor5 / stor6 / 10^18 * stor7[address(arg1)].field_0 / 10^18) - stor7[address(arg1)].field_256 > stor7[address(arg1)].field_0:
                    revert with 0, 'SafeMath sub failed.'
                stor7[address(arg1)].field_0 = stor7[address(arg1)].field_0 - (stor5 / stor6 / 10^18 * stor7[address(arg1)].field_0 / 10^18) + stor7[address(arg1)].field_256
                if stor5 / stor6 / 10^18 * stor7[address(arg1)].field_0 / 10^18 < stor7[address(arg1)].field_256:
                    revert with 0, 'SafeMath add failed.'
                stor7[address(arg1)].field_256 = stor5 / stor6 / 10^18 * stor7[address(arg1)].field_0 / 10^18
            require ext_code.size(sub_722d8ff0Address)
            call sub_722d8ff0Address.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), (stor5 / stor6 / 10^18 * stor7[address(arg1)].field_0 / 10^18) - stor7[address(arg1)].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Withdrawal failed.'
    else:
        return 0
}



}

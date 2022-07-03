contract main {




// =====================  Runtime code  =====================


const NAME = 'Neutral Token Vault'

const VERSION = '1.4'


uint8 stor0;
mapping of uint256 sub_5d973e47;
mapping of uint8 stor2;
mapping of uint8 stor3;

function permissions(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor2[arg1][arg2])
}

function sub_5d973e47(?) payable {
    require calldata.size - 4 >= 64
    return sub_5d973e47[address(arg1)][address(arg2)]
}

function deposits(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return sub_5d973e47[arg1][arg2]
}

function _fallback() payable {
    revert
}

function sub_b1383fdc(?) payable {
    require calldata.size - 4 >= 64
    if arg2 == arg1:
        return True
    return bool(stor2[address(arg1)][address(arg2)])
}

function sub_b5f5e722(?) payable {
    require not stor0
    stor0 = 1
    require ext_code.size(msg.sender)
    staticcall msg.sender.0x829dd895 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[31 len 1] == 200
    emit 0x8cd81c49: 1, msg.sender
    stor3[address(msg.sender)] = 1
    stor0 = 0
    return 1
}

function revoke(address arg1) payable {
    require calldata.size - 4 >= 32
    require not stor0
    stor0 = 1
    if not arg1:
        revert with 0, 'Address is invalid'
    if arg1 == this.address:
        revert with 0, 'Address is contract address'
    if arg1 != msg.sender:
        if not stor2[address(msg.sender)][address(arg1)]:
            revert with 0, 'caller does not have permission'
    if msg.sender == arg1:
        revert with 0, 'modification attempt on self'
    stor2[address(msg.sender)][address(arg1)] = 0
    emit 0xbec7db88: msg.sender, arg1
    require not stor2[address(msg.sender)][address(arg1)]
    stor0 = 0
    return 1
}

function grant(address arg1) payable {
    require calldata.size - 4 >= 32
    require not stor0
    stor0 = 1
    if not arg1:
        revert with 0, 'Address is invalid'
    if arg1 == this.address:
        revert with 0, 'Address is contract address'
    if msg.sender == arg1:
        revert with 0, 'modification attempt on self'
    if arg1 == msg.sender:
        revert with 0, 'caller is already permissioned'
    if stor2[address(msg.sender)][address(arg1)]:
        revert with 0, 'caller is already permissioned'
    stor2[address(msg.sender)][address(arg1)] = 1
    emit 0x65827c2b: msg.sender, arg1
    require bool(stor2[address(msg.sender)][address(arg1)]) == 1
    stor0 = 0
    return 1
}

function deposit(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require not stor0
    stor0 = 1
    if arg3 <= 0:
        revert with 0, 'Quantity is less than 1'
    if not arg1:
        revert with 0, 'Address is invalid'
    if arg1 == this.address:
        revert with 0, 'Address is contract address'
    if not arg2:
        revert with 0, 'Address is invalid'
    if arg2 == this.address:
        revert with 0, 'Address is contract address'
    require sub_5d973e47[address(arg1)][address(arg2)] + arg3 >= sub_5d973e47[address(arg1)][address(arg2)]
    sub_5d973e47[address(arg1)][address(arg2)] += arg3
    emit 0xc1688a9c: arg3, msg.sender, arg1, arg2
    require ext_code.size(arg2)
    call arg2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'token transfer failed'
    require 0 == arg3
    stor0 = 0
    return 1
}

function withdraw(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require not stor0
    stor0 = 1
    if arg3 <= 0:
        revert with 0, 'Quantity is less than 1'
    if not arg1:
        revert with 0, 'Address is invalid'
    if arg1 == this.address:
        revert with 0, 'Address is contract address'
    if not arg2:
        revert with 0, 'Address is invalid'
    if arg2 == this.address:
        revert with 0, 'Address is contract address'
    if arg3 > sub_5d973e47[address(msg.sender)][address(arg2)]:
        revert with 0, 'Insufficient balance'
    require arg3 <= sub_5d973e47[address(msg.sender)][address(arg2)]
    sub_5d973e47[address(msg.sender)][address(arg2)] -= arg3
    emit 0xfbd82180: arg3, msg.sender, arg1, arg2
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe546f6b656e207472616e73666572206661696c6564206f6e2077697468647261,
                    mem[197 len 31]
    require 0 == arg3
    stor0 = 0
    return 1
}

function transfer(address arg1, address arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require not stor0
    stor0 = 1
    if not arg1:
        revert with 0, 'Address is invalid'
    if arg1 == this.address:
        revert with 0, 'Address is contract address'
    if not arg2:
        revert with 0, 'Address is invalid'
    if arg2 == this.address:
        revert with 0, 'Address is contract address'
    if not arg3:
        revert with 0, 'Address is invalid'
    if arg3 == this.address:
        revert with 0, 'Address is contract address'
    if arg4 <= 0:
        revert with 0, 'Quantity is less than 1'
    if arg1 == arg2:
        revert with 0, '_from and _to are the same'
    if msg.sender == arg3:
        require bool(stor3[address(arg3)]) == 1
    else:
        if arg1 != msg.sender:
            if not stor2[address(arg1)][address(msg.sender)]:
                revert with 0, 'caller does not have permission'
    if arg4 > sub_5d973e47[address(arg1)][address(arg3)]:
        revert with 0, 'Insufficient balance'
    require arg4 <= sub_5d973e47[address(arg1)][address(arg3)]
    sub_5d973e47[address(arg1)][address(arg3)] -= arg4
    require sub_5d973e47[address(arg2)][address(arg3)] + arg4 >= sub_5d973e47[address(arg2)][address(arg3)]
    sub_5d973e47[address(arg2)][address(arg3)] += arg4
    emit 0x95b51c2e: msg.sender, arg4, arg1, arg2, arg3
    require 0 == arg4
    require 0 == arg4
    stor0 = 0
    return 1
}



}

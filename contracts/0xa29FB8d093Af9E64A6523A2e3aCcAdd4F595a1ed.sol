contract main {




// =====================  Runtime code  =====================


const sub_03100aa4(?) = 'ASSET'

const getBalance = eth.balance(this.address)

const sub_22459e18(?) = 'AGENT'

const sub_91d21924(?) = 'SUDO'

const ADMIN_ROLE = 'ADMIN'

const TRADER_ROLE = 'TRADER'


address sub_3967946dAddress;
mapping of uint8 stor1;
address stor2;
array of struct stor3;

function sub_3967946d(?) {
    return sub_3967946dAddress
}

function _fallback() payable {
    emit FundsDeposited(msg.value, msg.sender);
}

function getOwnerAddress() {
    require ext_code.size(stor2)
    staticcall stor2.0x3967946d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if sub_3967946dAddress != msg.sender:
        revert with 0, 'msg.sender is not the Owner.'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'New Owner must be a valid address'
    emit OwnershipTransferred(sub_3967946dAddress, arg1);
    sub_3967946dAddress = arg1
}

function sub_988a6063(?) {
    require calldata.size - 4 >= 32
    if sub_3967946dAddress != msg.sender:
        if not stor1[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Only the Immediate Owner of the platform or a Whitelisted addr can execute the function.'
    if not arg1:
        revert with 0, 'address cannot be 0'
    stor1[address(arg1)] = 0
    emit 0x46a78655: arg1
}

function sub_6078a3b2(?) {
    require calldata.size - 4 >= 32
    if sub_3967946dAddress != msg.sender:
        if not stor1[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Only the Immediate Owner of the platform or a Whitelisted addr can execute the function.'
    if not arg1:
        revert with 0, 'address cannot be 0'
    stor1[address(arg1)] = 1
    emit AddressRegistered(arg1);
}

function sub_0ab8f996(?) {
    mem[164] = uint256(stor3.field_0)
    idx = 164
    s = 0
    while stor3.length + 164 > idx + 32:
        mem[idx + 32] = stor3[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(stor2)
    staticcall stor2.0x5078e52d with:
            gas gas_remaining wei
           args Array(len=stor3.length, data=mem[164 len stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_a0d7823e(?) {
    require calldata.size - 4 >= 32
    mem[196] = uint256(stor3.field_0)
    idx = 196
    s = 0
    while stor3.length + 196 > idx + 32:
        mem[idx + 32] = stor3[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(stor2)
    staticcall stor2.checkRole(address arg1, string arg2) with:
            gas gas_remaining wei
           args address(arg1), Array(len=stor3.length, data=mem[196 len stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if sub_3967946dAddress != msg.sender:
        if not stor1[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Only the Immediate Owner of the platform or a Whitelisted addr can execute the function.'
    if arg2 > eth.balance(this.address):
        revert with 0, 'Can not withdraw that amount'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit FundsWithdrawn(arg2, arg1);
}

function isRole(address arg1) {
    require calldata.size - 4 >= 32
    mem[196] = uint256(stor3.field_0)
    idx = 196
    s = 0
    while stor3.length + 196 > idx + 32:
        mem[idx + 32] = stor3[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(stor2)
    staticcall stor2.0x217fe6c6 with:
            gas gas_remaining wei
           args address(arg1), Array(len=stor3.length, data=mem[196 len stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function isVerifiedUser(address arg1) {
    require calldata.size - 4 >= 32
    mem[196] = uint256(stor3.field_0)
    idx = 196
    s = 0
    while stor3.length + 196 > idx + 32:
        mem[idx + 32] = stor3[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(stor2)
    staticcall stor2.0xf23d080f with:
            gas gas_remaining wei
           args address(arg1), Array(len=stor3.length, data=mem[196 len stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_d574f469(?) {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only a Whitelisted addr can execute the function'
    mem[196] = uint256(stor3.field_0)
    idx = 196
    s = 0
    while stor3.length + 196 > idx + 32:
        mem[idx + 32] = stor3[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(stor2)
    call stor2.0x7d72aa65 with:
         gas gas_remaining wei
        args address(arg1), Array(len=stor3.length, data=mem[196 len stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[196] = uint256(stor3.field_0)
    idx = 196
    s = 0
    while stor3.length + 196 > idx + 32:
        mem[idx + 32] = stor3[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(stor2)
    call stor2.0x641d7a78 with:
         gas gas_remaining wei
        args address(arg1), Array(len=stor3.length, data=mem[196 len stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8d14f0fc(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor2)
    staticcall stor2.0x217fe6c6 with:
            gas gas_remaining wei
           args msg.sender, 'ADMIN'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    staticcall stor2.0xf23d080f with:
            gas gas_remaining wei
           args msg.sender, 'ADMIN'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Only a Admin Member can execute this function.'
    if not ext_call.return_data[0]:
        revert with 0, 'Only a Admin Member can execute this function.'
    mem[324] = uint256(stor3.field_0)
    if not arg2:
        idx = 324
        s = 0
        while stor3.length + 324 > idx + 32:
            mem[idx + 32] = stor3[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(stor2)
        call stor2.0x5a6ee999 with:
             gas gas_remaining wei
            args address(arg1), Array(len=stor3.length, data=mem[324 len stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32)])
    else:
        idx = 324
        s = 0
        while stor3.length + 324 > idx + 32:
            mem[idx + 32] = stor3[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(stor2)
        call stor2.0x641d7a78 with:
             gas gas_remaining wei
            args address(arg1), Array(len=stor3.length, data=mem[324 len stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}

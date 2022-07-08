contract main {




// =====================  Runtime code  =====================


const sub_d819bfef(?) = 1

const sub_f3bc843e(?) = 'governance'

const MAX_DEST_AMOUNT = -1


address resolverAddress;
mapping of uint8 stor1;
uint8 sub_07003bb4;
address stor2;
address kyberNetworkAddress; offset 8
uint256 stor2; offset 8
address tokenManagerAddress;
mapping of uint256 sub_52d4ec70;
mapping of uint8 stor5;
mapping of uint8 stor99;

function resolver() {
    return resolverAddress
}

function sub_07003bb4(?) {
    return bool(sub_07003bb4)
}

function tokenManager() {
    return tokenManagerAddress
}

function sub_52d4ec70(?) {
    return sub_52d4ec70[arg1][arg2]
}

function kyberNetwork() {
    return kyberNetworkAddress
}

function sub_c569cac3(?) {
    return bool(uint8(stor5[arg1]))
}

function _fallback() payable {
    revert
}

function sub_72679a24(?) {
    return not bool(uint8(stor5[address(arg1)]))
}

function sub_0723fa4f(?) {
    require stor1['governance'][address(msg.sender)]
    uint256(stor5[address(arg1)]) = not uint8(stor5[address(arg1)]) or Mask(248, 8, uint256(stor5[address(arg1)]))
}

function init(address arg1, address arg2) {
    require not sub_07003bb4
    require arg2
    tokenManagerAddress = arg2
    sub_07003bb4 = 1
    kyberNetworkAddress = arg1
    Mask(248, 0, stor2.field_8) = 0
    return 1
}

function setExchangeRate(address arg1, address arg2, uint256 arg3) {
    require stor1['governance'][address(msg.sender)]
    require arg1
    require arg2
    require arg3
    sub_52d4ec70[address(arg1)][address(arg2)] = arg3
    emit 0xfda5f3c7: address(arg1), address(arg2), arg3
    return 1
}

function mint(address arg1, uint256 arg2) {
    require ext_code.size(arg1)
    call arg1.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function checkRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 1
    require stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)]
}

function hasRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 1
    mem[ceil32(arg2.length) + 128] = bool(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)])
    return memory
      from ceil32(arg2.length) + 128
       len 32
}

function getExchangeRate(address arg1, address arg2, uint256 arg3) {
    if uint8(stor5[address(arg2)]):
        require sub_52d4ec70[address(arg1)][address(arg2)]
        return sub_52d4ec70[address(arg1)][address(arg2)]
    require ext_code.size(kyberNetworkAddress)
    call kyberNetworkAddress.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(tokenManagerAddress)
    call tokenManagerAddress.0x785c7cf6 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenManagerAddress)
    call tokenManagerAddress.0x785c7cf6 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if 10^ext_call.return_data[0]:
            return (0 / 10^ext_call.return_data[0])
    else:
        if 10^ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == 10^ext_call.return_data[0]:
            if 10^ext_call.return_data[0]:
                return (10^ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0])
    revert
}

function sub_dca751a6(?) payable {
    require ext_code.size(tokenManagerAddress)
    call tokenManagerAddress.0x17bfdd57 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == arg1:
        require ext_code.size(kyberNetworkAddress)
        call kyberNetworkAddress.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
           value msg.value wei
             gas gas_remaining wei
            args 0, 0, msg.value, address(arg2), arg3, -1, 1, arg3
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= arg4
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(stor2.field_0), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(kyberNetworkAddress)
        call kyberNetworkAddress.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
             gas gas_remaining wei
            args 0, 0, arg4, address(arg2), arg3, -1, 1, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}

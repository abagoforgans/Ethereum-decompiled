contract main {




// =====================  Runtime code  =====================


#
#  - initialize(address arg1)
#
uint8 stor1; offset 160
address owner;
address stor2;
address sub_e2ed7511Address;
address sub_91f913e0Address;
address sub_df4e3bbbAddress;
mapping of uint8 stor99;

function paused() {
    return bool(stor1)
}

function owner() {
    return owner
}

function sub_91f913e0(?) {
    return sub_91f913e0Address
}

function sub_df4e3bbb(?) {
    return sub_df4e3bbbAddress
}

function sub_e2ed7511(?) {
    return sub_e2ed7511Address
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender == owner
    require stor1
    stor1 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor1
    stor1 = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getBalance() {
    require ext_code.size(stor2)
    call stor2.0x12065fe0 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function sub_19011241(?) {
    require msg.sender == owner
    require not stor1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'CorporationMarket contract address should be defined'
    sub_91f913e0Address = arg1
}

function sub_00c52402(?) {
    require ext_code.size(stor2)
    call stor2.0xc52402 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function sub_88acfdd4(?) {
    require msg.sender == owner
    require not stor1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'SpaceshipInvention contract address should be defined'
    sub_e2ed7511Address = arg1
}

function sub_e276c74a(?) {
    require msg.sender == owner
    require not stor1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'CorporationFactory contract address should be defined'
    sub_df4e3bbbAddress = arg1
}

function sub_3b54a275(?) {
    require ext_code.size(stor2)
    call stor2.0x3b54a275 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function sub_6630f609(?) {
    require ext_code.size(stor2)
    call stor2.0x6630f609 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function sub_6ad41d81(?) {
    require ext_code.size(stor2)
    call stor2.0x6ad41d81 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function sub_ca56fdfa(?) {
    require ext_code.size(stor2)
    call stor2.0xca56fdfa with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function sub_deb30a18(?) {
    require ext_code.size(stor2)
    call stor2.0xdeb30a18 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function isMigrated(string arg1, string arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 160] = 0
    _21 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[ceil32(arg1.length) + arg2.length + 160 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg2.length + 160] = _21
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = bool(stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]])
    return memory
      from ceil32(arg1.length) + ceil32(arg2.length) + 160
       len 32
}



}

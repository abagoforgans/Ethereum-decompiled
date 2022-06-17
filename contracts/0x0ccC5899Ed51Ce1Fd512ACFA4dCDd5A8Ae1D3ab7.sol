contract main {




// =====================  Runtime code  =====================


const sub_4a9a0697(?) = 0x75375b37845792256f274875b345f35597d1c053

const sub_bb42ae45(?) = 0xf8d03ae98997b7d58a69db3b98a77ae6819ff39b


address sub_6a998d0dAddress;
address registryAddress;
array of struct name;
array of uint256 symbol;
mapping of uint256 stor99;

function name() payable {
    return name[0 len name.length].field_0
}

function sub_6a998d0d(?) payable {
    return sub_6a998d0dAddress
}

function registry() payable {
    return registryAddress
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}

function sub_ff067098(?) payable {
    require ext_code.size(registryAddress)
    staticcall registryAddress.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function getFile(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 4
    mem[ceil32(arg1.length) + 128] = stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_8581dac8(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 196] = uint256(name.field_0)
    idx = ceil32(arg2.length) + 196
    s = 0
    while ceil32(arg2.length) + name.length + 196 > idx + 32:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(registryAddress)
    staticcall registryAddress with:
            gas gas_remaining wei
           args Array(len=name.length, data=mem[ceil32(arg2.length) + 196 len name.length + (floor32(name.length - 1) + -name.length + 32 % 32)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) != this.address:
        revert with 0, 'invalid pDNA'
    mem[ceil32(arg2.length) + 128] = 0x988ca8c00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + 132] = msg.sender
    mem[ceil32(arg2.length) + 164] = 64
    mem[ceil32(arg2.length) + 196] = 10
    mem[ceil32(arg2.length) + 228] = 'authorized'
    require ext_code.size(sub_6a998d0dAddress)
    staticcall sub_6a998d0dAddress.checkRole(address arg1, string arg2) with:
            gas gas_remaining wei
           args msg.sender, Array(len=10, data='authorized')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = 4
    stor[mem[ceil32(arg2.length) + 132 len arg2.length + 28]][0] = arg1
    mem[ceil32(arg2.length) + 128] = 32
    mem[ceil32(arg2.length) + 192 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit 0x39abb848: 0, 32, arg2.length, Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256, msg.sender, arg1
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 192] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32]
        emit 0x39abb848: 0, 32, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 192 len floor32(arg2.length) + -ceil32(arg2.length) + 32], msg.sender, arg1
}

function sub_f1afe04d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 196] = uint256(name.field_0)
    idx = ceil32(arg1.length) + 196
    s = 0
    while ceil32(arg1.length) + name.length + 196 > idx + 32:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(registryAddress)
    staticcall registryAddress with:
            gas gas_remaining wei
           args Array(len=name.length, data=mem[ceil32(arg1.length) + 196 len name.length + (floor32(name.length - 1) + -name.length + 32 % 32)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) != this.address:
        revert with 0, 'invalid pDNA'
    mem[ceil32(arg1.length) + 128] = 0x988ca8c00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 132] = msg.sender
    mem[ceil32(arg1.length) + 164] = 64
    mem[ceil32(arg1.length) + 196] = 10
    mem[ceil32(arg1.length) + 228] = 'authorized'
    require ext_code.size(sub_6a998d0dAddress)
    staticcall sub_6a998d0dAddress.checkRole(address arg1, string arg2) with:
            gas gas_remaining wei
           args msg.sender, Array(len=10, data='authorized')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 4
    _165 = sha3(0, mem[ceil32(arg1.length) + 132 len arg1.length + 28])
    require stor[mem[ceil32(arg1.length) + 132 len arg1.length + 28]][0]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 4
    stor[mem[ceil32(arg1.length) + 132 len arg1.length + 28]][0] = 0
    mem[ceil32(arg1.length) + 128] = 32
    mem[ceil32(arg1.length) + 192 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit 0x9b125424: 0, 32, arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256, msg.sender, stor[_165]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 192] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32]
        emit 0x9b125424: 0, 32, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 192 len floor32(arg1.length) + -ceil32(arg1.length) + 32], msg.sender, stor[_165]
}



}

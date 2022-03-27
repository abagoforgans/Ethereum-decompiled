contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
mapping of struct stor2;

function _fallback() payable {
    stor0 = msg.sender
    require not msg.value
    stor1 = 1
    stor2[0] = 0
    return code.data[209 len 2621]
}



// =====================  Runtime code  =====================


address stor0;
uint256 version;
array of struct identities;
mapping of struct delegates;

function version() {
    return version
}

function delegates(address arg1) {
    return delegates[arg1].field_0, delegates[arg1].field_256, delegates[arg1].field_512, delegates[arg1].field_768
}

function identities(address arg1) {
    return identities[arg1].field_0, 
           identities[arg1].field_256,
           identities[arg1].field_768,
           identities[arg1].field_1024,
           identities[arg1].field_1280,
           identities[arg1].field_1536
}

function _fallback() payable {
  stop
}

function forward(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    if stor0 != msg.sender:
    if arg3.length:
        mem[ceil32(arg3.length) + 128] = mem[128]
        mem[ceil32(arg3.length) + 160 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
    if not arg3.length % 32:
        call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
           value arg2 wei
             gas gas_remaining - 34050 wei
            args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 128] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
        call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
           value arg2 wei
             gas gas_remaining - 34050 wei
            args mem[ceil32(arg3.length) + 132 len floor32(arg3.length) + 28]
    require ext_call.success
}

function sub_a33e4616(?) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128 len 592] = code.data[1986 len 592]
    create contract with 0 wei
                    code: code.data[1986 len 592]
    require create.new_address
    identities[address(msg.sender)].field_0 = address(create.new_address)
    identities[address(msg.sender)].field_1280 = arg2
    identities[address(msg.sender)].field_1536 = arg1
    identities[address(msg.sender)].field_512 = arg3.length
    if not arg3.length:
        idx = 0
        while identities[address(msg.sender)].field_512 > idx:
            identities[address(msg.sender)][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg3.length) + 128 > idx:
            identities[address(msg.sender)][s + 2].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
        while identities[address(msg.sender)].field_512 > idx:
            identities[address(msg.sender)][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    emit 0x2a27c6cf: msg.sender, address(create.new_address)
}



}

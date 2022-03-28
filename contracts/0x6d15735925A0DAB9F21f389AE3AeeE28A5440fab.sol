contract main {


// =======================  Init code  ======================


array of uint256 stor0;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 5
    stor0.length.field_8 = '1.0.0' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    return code.data[291 len 10223]
}



// =====================  Runtime code  =====================


array of uint256 version;
mapping of struct identities;

function version() {
    return version[0 len version.length]
}

function identities(address arg1) {
    return identities[arg1].field_0, 
           identities[arg1].field_256,
           identities[arg1].field_512,
           identities[arg1].field_768,
           identities[arg1].field_1024,
           identities[arg1].field_1280,
           identities[arg1].field_1536,
           identities[arg1].field_1792,
           identities[arg1].field_2048,
           identities[arg1].field_2304,
           identities[arg1].field_2560
}

function _fallback() payable {
    revert
}

function sub_2b89115c(?) {
    if identities[address(arg1)].field_768 == msg.sender:
        identities[address(arg1)].field_768 = arg2
}

function signUserKeyChange(address arg1) {
    identities[address(msg.sender)].field_512 = block.timestamp + identities[address(msg.sender)].field_2048
    identities[address(msg.sender)].field_256 = arg1
    emit RecoveryEvent(Array(len=17, data='signUserKeyChange'), msg.sender);
}

function signRecoveryChange(address arg1) {
    if identities[address(msg.sender)].field_0:
        identities[address(msg.sender)].field_1280 = block.timestamp + identities[address(msg.sender)].field_2304
        identities[address(msg.sender)].field_1024 = arg1
        emit RecoveryEvent(Array(len=18, data='signRecoveryChange'), msg.sender);
}

function signControllerChange(address arg1) {
    if identities[address(msg.sender)].field_0:
        identities[address(msg.sender)].field_1792 = block.timestamp + identities[address(msg.sender)].field_2304
        identities[address(msg.sender)].field_1536 = arg1
        emit RecoveryEvent(Array(len=20, data='signControllerChange'), msg.sender);
}

function changeRecovery() {
    if identities[address(msg.sender)].field_0:
        if identities[address(msg.sender)].field_1280 < block.timestamp:
            if identities[address(msg.sender)].field_1024:
                identities[address(msg.sender)].field_768 = identities[address(msg.sender)].field_1024
                identities[address(msg.sender)].field_1024 = 0
                identities[address(msg.sender)].field_1280 = 0
}

function sub_46941e53(?) {
    require not identities[address(arg1)].field_0
    identities[address(arg1)].field_0 = arg1
    identities[address(arg1)].field_768 = arg2
    identities[address(arg1)].field_2048 = arg3
    identities[address(arg1)].field_2304 = arg4
    create contract with 0 wei
                    code: code.data[9368 len 812]
    require create.new_address
    identities[address(arg1)].field_2560 = address(create.new_address)
    emit 0x2a27c6cf: msg.sender, address(create.new_address)
}

function forward(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    if identities[address(msg.sender)].field_0:
        mem[ceil32(arg3.length) + 128] = 0xd7f31eb900000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg3.length) + 132] = arg1
        mem[ceil32(arg3.length) + 164] = arg2
        mem[ceil32(arg3.length) + 196] = 96
        mem[ceil32(arg3.length) + 228] = arg3.length
        if arg3.length:
            mem[ceil32(arg3.length) + 260] = mem[128]
            mem[ceil32(arg3.length) + 292 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
        require ext_code.size(identities[address(msg.sender)].field_2560)
        call identities[address(msg.sender)].field_2560.0xd7f31eb9 with:
             gas gas_remaining - 50 wei
            args address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 260 len arg3.length])
        require ext_call.success
        emit 0xa4dfdf2f: identities[address(msg.sender)].field_2560
}

function sub_00a714fa(?) {
    if identities[address(arg1)].field_768 == msg.sender:
        require not identities[address(arg2)].field_0
        identities[address(arg2)].field_0 = identities[address(arg1)].field_0
        identities[address(arg2)].field_768 = identities[address(arg1)].field_768
        identities[address(arg2)].field_2048 = identities[address(arg1)].field_2048
        identities[address(arg2)].field_2304 = identities[address(arg1)].field_2304
        identities[address(arg2)].field_2560 = identities[address(arg1)].field_2560
        identities[address(arg1)].field_0 = 0
        identities[address(arg1)].field_256 = 0
        identities[address(arg1)].field_512 = 0
        identities[address(arg1)].field_768 = 0
        identities[address(arg1)].field_1024 = 0
        identities[address(arg1)].field_1280 = 0
        identities[address(arg1)].field_1536 = 0
        identities[address(arg1)].field_1792 = 0
        identities[address(arg1)].field_2048 = 0
        identities[address(arg1)].field_2304 = 0
        identities[address(arg1)].field_2560 = 0
        emit RecoveryEvent(Array(len=13, data='updateMapping'), msg.sender);
}

function changeController() {
    if identities[address(msg.sender)].field_0:
        if identities[address(msg.sender)].field_1792 < block.timestamp:
            if identities[address(msg.sender)].field_1536:
                require ext_code.size(identities[address(msg.sender)].field_2560)
                call identities[address(msg.sender)].field_2560.0xf2fde38b with:
                     gas gas_remaining - 50 wei
                    args identities[address(msg.sender)].field_1536
                require ext_call.success
                identities[address(msg.sender)].field_0 = 0
                identities[address(msg.sender)].field_256 = 0
                identities[address(msg.sender)].field_512 = 0
                identities[address(msg.sender)].field_768 = 0
                identities[address(msg.sender)].field_1024 = 0
                identities[address(msg.sender)].field_1280 = 0
                identities[address(msg.sender)].field_1536 = 0
                identities[address(msg.sender)].field_1792 = 0
                identities[address(msg.sender)].field_2048 = 0
                identities[address(msg.sender)].field_2304 = 0
                identities[address(msg.sender)].field_2560 = 0
                emit RecoveryEvent(string rg1, address rg2):
                                   0xf2fde38b00000000000000000000000000000000000000000000000000000000,
                                   msg.sender,
                                   16,
                                   'changeController',
}

function changeUserKey() {
    if identities[address(msg.sender)].field_512 < block.timestamp:
        if identities[address(msg.sender)].field_256:
            require not identities[identities[address(msg.sender)].field_256].field_0
            identities[identities[address(msg.sender)].field_256].field_0 = identities[address(msg.sender)].field_0
            identities[identities[address(msg.sender)].field_256].field_768 = identities[address(msg.sender)].field_768
            identities[identities[address(msg.sender)].field_256].field_2048 = identities[address(msg.sender)].field_2048
            identities[identities[address(msg.sender)].field_256].field_2304 = identities[address(msg.sender)].field_2304
            identities[identities[address(msg.sender)].field_256].field_2560 = identities[address(msg.sender)].field_2560
            identities[address(msg.sender)].field_0 = 0
            identities[address(msg.sender)].field_256 = 0
            identities[address(msg.sender)].field_512 = 0
            identities[address(msg.sender)].field_768 = 0
            identities[address(msg.sender)].field_1024 = 0
            identities[address(msg.sender)].field_1280 = 0
            identities[address(msg.sender)].field_1536 = 0
            identities[address(msg.sender)].field_1792 = 0
            identities[address(msg.sender)].field_2048 = 0
            identities[address(msg.sender)].field_2304 = 0
            identities[address(msg.sender)].field_2560 = 0
            emit RecoveryEvent(Array(len=13, data='updateMapping'), msg.sender);
            emit RecoveryEvent(Array(len=13, data='changeUserKey'), msg.sender);
}



}

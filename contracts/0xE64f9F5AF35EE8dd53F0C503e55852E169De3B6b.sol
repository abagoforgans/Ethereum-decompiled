contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[95 len 1733]
}



// =====================  Runtime code  =====================


address addAuthorityAddress;
mapping of uint256 getCert;

function AddAuthority() {
    return addAuthorityAddress
}

function GetCert(uint32 arg1) {
    return getCert[arg1 << 224]
}

function destroy() {
    if addAuthorityAddress != msg.sender:
    selfdestruct(addAuthorityAddress)
}

function _fallback() {
    revert
}

function SetCert(uint32 arg1, bytes32 arg2) {
    getCert[arg1 << 224] = arg2
}

function VerifSignature(bytes arg1, bytes arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    signer = erecover(mem[ceil32(arg1.length) + 160], mem[161] << 248, mem[128], mem[160]) 
    require erecover.result
    return (mem[ceil32(arg1.length) + 192 len 20] == address(signer))
}

function VerifCert(uint32 arg1, bool arg2, bytes arg3, bytes arg4) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    if not getCert[arg1 << 224]:
        return 0
    _6 = mem[161]
    _8 = mem[ceil32(arg3.length) + 180]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = mem[ceil32(arg3.length) + 160]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 224] = uint8(_6)
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 288] = mem[160]
    signer = erecover(mem[ceil32(arg3.length) + 160], _6 << 248, mem[128], mem[160]) 
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = signer
    require erecover.result
    if address(_8) != address(signer):
        if not arg2:
            return 2
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = 64
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 256] = arg3.length
        if not arg3.length:
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 224] = arg3.length + 96
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 288] = arg4.length
            if not arg4.length:
                if not arg4.length % 32:
                    emit EventNotarise(address rg1, bytes rg2, bytes rg3):
                                       Array(len=arg3.length, data=mem[ceil32(arg3.length) + ceil32(arg4.length) + 288 len arg4.length + arg3.length + 32]),
                                       arg3.length + 96,
                    emit 0x0: Array(len=arg3.length, data=mem[ceil32(arg3.length) + ceil32(arg4.length) + 288 len arg4.length + arg3.length + 32]), arg3.length + 96
                else:
                    mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 320] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 352 len arg4.length % 32]
                    emit EventNotarise(address rg1, bytes rg2, bytes rg3):
                                       Array(len=arg3.length, data=mem[ceil32(arg3.length) + ceil32(arg4.length) + 288 len floor32(arg4.length) + arg3.length + 64]),
                                       arg3.length + 96,
                    emit 0x0: Array(len=arg3.length, data=mem[ceil32(arg3.length) + ceil32(arg4.length) + 288 len floor32(arg4.length) + arg3.length + 64]), arg3.length + 96
            else:
                mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 320] = mem[ceil32(arg3.length) + 160]
                mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 352 len floor32(arg4.length - 1)] = mem[ceil32(arg3.length) + 192 len floor32(arg4.length - 1)]
                if not arg4.length % 32:
                    emit EventNotarise(address rg1, bytes rg2, bytes rg3):
                                       Array(len=arg3.length, data=mem[ceil32(arg3.length) + ceil32(arg4.length) + 288 len arg4.length + arg3.length + 32]),
                                       arg3.length + 96,
                    emit 0x0: Array(len=arg3.length, data=mem[ceil32(arg3.length) + ceil32(arg4.length) + 288 len arg4.length + arg3.length + 32]), arg3.length + 96
                else:
                    mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 320] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 352 len arg4.length % 32]
                    emit EventNotarise(address rg1, bytes rg2, bytes rg3):
                                       Array(len=arg3.length, data=mem[ceil32(arg3.length) + ceil32(arg4.length) + 288 len arg3.length + 32], mem[ceil32(arg3.length) + 160], mem[ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 352 len floor32(arg4.length)]),
                                       arg3.length + 96,
                    emit 0x0: Array(len=arg3.length, data=mem[ceil32(arg3.length) + ceil32(arg4.length) + 288 len arg3.length + 32], mem[ceil32(arg3.length) + 160], mem[ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 352 len floor32(arg4.length)]), arg3.length + 96
        else:
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 288] = mem[128]
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 320 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 224] = arg3.length + 96
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 288] = arg4.length
            if arg4.length:
                mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 320] = mem[ceil32(arg3.length) + 160]
                mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 352 len floor32(arg4.length - 1)] = mem[ceil32(arg3.length) + 192 len floor32(arg4.length - 1)]
            if not arg4.length % 32:
                emit EventNotarise(address rg1, bytes rg2, bytes rg3):
                                   Array(len=arg3.length, data=mem[128], mem[ceil32(arg3.length) + ceil32(arg4.length) + 320 len arg4.length + arg3.length]),
                                   arg3.length + 96,
                emit 0x0: Array(len=arg3.length, data=mem[128], mem[ceil32(arg3.length) + ceil32(arg4.length) + 320 len arg4.length + arg3.length]), arg3.length + 96
            else:
                mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 320] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 352 len arg4.length % 32]
                emit EventNotarise(address rg1, bytes rg2, bytes rg3):
                                   Array(len=arg3.length, data=mem[128], mem[ceil32(arg3.length) + ceil32(arg4.length) + 320 len floor32(arg4.length) + arg3.length + 32]),
                                   arg3.length + 96,
                emit 0x0: Array(len=arg3.length, data=mem[128], mem[ceil32(arg3.length) + ceil32(arg4.length) + 320 len floor32(arg4.length) + arg3.length + 32]), arg3.length + 96
    else:
        _17 = mem[ceil32(arg3.length) + 180]
        if not arg2:
            return 1
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = 64
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 256] = arg3.length
        if not arg3.length:
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 224] = arg3.length + 96
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 288] = arg4.length
            if not arg4.length:
                if not arg4.length % 32:
                    emit EventNotarise(Array(len=arg3.length, data=mem[ceil32(arg3.length) + ceil32(arg4.length) + 288 len arg4.length + arg3.length + 32]), arg3.length + 96, address(_17));
                else:
                    mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 320] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 352 len arg4.length % 32]
                    emit EventNotarise(Array(len=arg3.length, data=mem[ceil32(arg3.length) + ceil32(arg4.length) + 288 len floor32(arg4.length) + arg3.length + 64]), arg3.length + 96, address(_17));
            else:
                mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 320] = mem[ceil32(arg3.length) + 160]
                mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 352 len floor32(arg4.length - 1)] = mem[ceil32(arg3.length) + 192 len floor32(arg4.length - 1)]
                if not arg4.length % 32:
                    emit EventNotarise(Array(len=arg3.length, data=mem[ceil32(arg3.length) + ceil32(arg4.length) + 288 len arg4.length + arg3.length + 32]), arg3.length + 96, address(_17));
                else:
                    mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 320] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 352 len arg4.length % 32]
                    emit EventNotarise(Array(len=arg3.length, data=mem[ceil32(arg3.length) + ceil32(arg4.length) + 288 len arg3.length + 32], mem[ceil32(arg3.length) + 160], mem[ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 352 len floor32(arg4.length)]), arg3.length + 96, address(_17));
        else:
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 288] = mem[128]
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 320 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 224] = arg3.length + 96
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 288] = arg4.length
            if arg4.length:
                mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 320] = mem[ceil32(arg3.length) + 160]
                mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 352 len floor32(arg4.length - 1)] = mem[ceil32(arg3.length) + 192 len floor32(arg4.length - 1)]
            if not arg4.length % 32:
                emit EventNotarise(Array(len=arg3.length, data=mem[128], mem[ceil32(arg3.length) + ceil32(arg4.length) + 320 len arg4.length + arg3.length]), arg3.length + 96, address(_17));
            else:
                mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 320] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 352 len arg4.length % 32]
                emit EventNotarise(Array(len=arg3.length, data=mem[128], mem[ceil32(arg3.length) + ceil32(arg4.length) + 320 len floor32(arg4.length) + arg3.length + 32]), arg3.length + 96, address(_17));
    return 3
}



}

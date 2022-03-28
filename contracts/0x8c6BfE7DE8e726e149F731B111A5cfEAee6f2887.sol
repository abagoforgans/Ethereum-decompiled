contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[57 len 2314]
}



// =====================  Runtime code  =====================


address sub_4e458aefAddress;

function sub_4e458aef(?) {
    return sub_4e458aefAddress
}

function _fallback() payable {
    revert
}

function sub_285b5ec9(?) {
    require sub_4e458aefAddress == msg.sender
    sub_4e458aefAddress = arg1
}

function sub_444bd6fd(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len 1740] = code.data[531 len 1740]
    mem[ceil32(arg1.length) + 1900] = sub_4e458aefAddress
    mem[ceil32(arg1.length) + 1868] = 64
    mem[ceil32(arg1.length) + 1932] = arg1.length
    if not arg1.length:
        if not arg1.length % 32:
            create contract with 0 wei
                            code: code.data[531 len 1740], Array(len=sub_4e458aefAddress, data=arg1.length, mem[ceil32(arg1.length) + 1964 len arg1.length])
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + 1964] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 1996 len arg1.length % 32]
            create contract with 0 wei
                            code: code.data[531 len 1740], Array(len=sub_4e458aefAddress, data=arg1.length, mem[ceil32(arg1.length) + 1964 len floor32(arg1.length) + 32])
    else:
        mem[ceil32(arg1.length) + 1964] = mem[128]
        mem[ceil32(arg1.length) + 1996 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
        if not arg1.length % 32:
            create contract with 0 wei
                            code: code.data[531 len 1740], Array(len=sub_4e458aefAddress, data=arg1.length, mem[ceil32(arg1.length) + 1964 len arg1.length])
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + 1964] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 1996 len arg1.length % 32]
            create contract with 0 wei
                            code: code.data[531 len 1740], Array(len=sub_4e458aefAddress, data=arg1.length, mem[128], mem[ceil32(arg1.length) + 1996 len floor32(arg1.length)])
    require create.new_address
    return address(create.new_address)
}



}

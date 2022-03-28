contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[54 len 2442]
}



// =====================  Runtime code  =====================


address sub_7bcb7773Address;

function sub_7bcb7773(?) {
    return sub_7bcb7773Address
}

function _fallback() payable {
    revert 
}

function sub_285b5ec9(?) {
    require sub_7bcb7773Address == msg.sender
    sub_7bcb7773Address = arg1
}

function sub_444bd6fd(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len 1876] = code.data[523 len 1876]
    mem[ceil32(arg1.length) + 2036] = sub_7bcb7773Address
    mem[ceil32(arg1.length) + 2004] = 64
    mem[ceil32(arg1.length) + 2068] = arg1.length
    if not arg1.length:
        if not arg1.length % 32:
            create contract with 0 wei
                            code: code.data[523 len 1876], Array(len=sub_7bcb7773Address, data=arg1.length, mem[ceil32(arg1.length) + 2100 len arg1.length])
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + 2100] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 2132 len arg1.length % 32]
            create contract with 0 wei
                            code: code.data[523 len 1876], Array(len=sub_7bcb7773Address, data=arg1.length, mem[ceil32(arg1.length) + 2100 len floor32(arg1.length) + 32])
    else:
        mem[ceil32(arg1.length) + 2100] = mem[128]
        mem[ceil32(arg1.length) + 2132 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
        if not arg1.length % 32:
            create contract with 0 wei
                            code: code.data[523 len 1876], Array(len=sub_7bcb7773Address, data=arg1.length, mem[ceil32(arg1.length) + 2100 len arg1.length])
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + 2100] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 2132 len arg1.length % 32]
            create contract with 0 wei
                            code: code.data[523 len 1876], Array(len=sub_7bcb7773Address, data=arg1.length, mem[128], mem[ceil32(arg1.length) + 2132 len floor32(arg1.length)])
    require create.new_address
    return address(create.new_address)
}



}

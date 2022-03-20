contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 822]




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function sub_6827102e(?) payable {
    mem[ceil32(arg1.length) + 751 len arg1.length] = arg1[all]
    if not arg1.length % 32:
        create contract with 0 wei
                        code: code.data[263 len 559], 32, arg1.length, arg1[all]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 751] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 783 len arg1.length % 32]
        create contract with 0 wei
                        code: code.data[263 len 559], 32, arg1.length, arg1[all], mem[ceil32(arg1.length) + arg1.length + 751 len -(arg1.length % 32) + 32]
    return address(create.new_address)
}



}

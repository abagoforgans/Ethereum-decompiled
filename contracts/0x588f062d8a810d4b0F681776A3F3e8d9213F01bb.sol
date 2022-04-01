contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 1850]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function createSellENS(string arg1, uint256 arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len 1395] = code.data[412 len 1395]
    mem[ceil32(arg1.length) + 1555] = arg2
    mem[ceil32(arg1.length) + 1587] = msg.sender
    mem[ceil32(arg1.length) + 1523] = 96
    mem[ceil32(arg1.length) + 1619] = arg1.length
    if not arg1.length:
        if not arg1.length % 32:
            create contract with 0 wei
                            code: code.data[412 len 1395], Array(len=msg.sender, data=arg1.length, mem[ceil32(arg1.length) + 1651 len arg1.length]), arg2
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + 1651] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 1683 len arg1.length % 32]
            create contract with 0 wei
                            code: code.data[412 len 1395], Array(len=msg.sender, data=arg1.length, mem[ceil32(arg1.length) + 1651 len floor32(arg1.length) + 32]), arg2
    else:
        mem[ceil32(arg1.length) + 1651] = mem[128]
        mem[ceil32(arg1.length) + 1683 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
        if not arg1.length % 32:
            create contract with 0 wei
                            code: code.data[412 len 1395], Array(len=msg.sender, data=arg1.length, mem[ceil32(arg1.length) + 1651 len arg1.length]), arg2
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + 1651] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 1683 len arg1.length % 32]
            create contract with 0 wei
                            code: code.data[412 len 1395], Array(len=msg.sender, data=arg1.length, mem[128], mem[ceil32(arg1.length) + 1683 len floor32(arg1.length)]), arg2
    require create.new_address
}



}

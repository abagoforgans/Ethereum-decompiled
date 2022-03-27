contract main {


// =======================  Init code  ======================


const _fallback = code.data[24 len 1246]




// =====================  Runtime code  =====================


array of address stor0;
array of address stor1;

function _fallback() payable {
    revert 
}

function sub_c9b9c530(?) {
    mem[ceil32(arg2.length) + 956 len arg2.length] = arg2[all]
    if not arg2.length % 32:
        create contract with 0 wei
                        code: code.data[546 len 700], arg1, Array(len=msg.sender, data=arg2.length, arg2[all])
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 956] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 988 len arg2.length % 32]
        create contract with 0 wei
                        code: code.data[546 len 700], arg1, Array(len=msg.sender, data=arg2.length, arg2[all], mem[ceil32(arg2.length) + arg2.length + 956 len -(arg2.length % 32) + 32])
    require create.new_address
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = stor0.length + 1
        while stor0.length > idx:
            uint256(stor0[idx]) = 0
            idx = idx + 1
            continue 
    address(stor0[stor0.length]) = address(create.new_address)
    stor1.length++
    stor1[stor1.length] = msg.sender
}



}

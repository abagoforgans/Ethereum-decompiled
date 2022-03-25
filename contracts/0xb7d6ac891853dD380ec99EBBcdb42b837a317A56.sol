contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = code.data[477 len 32]
    return code.data[69 len 408]
}



// =====================  Runtime code  =====================


address owner;
address proxyAddress;

function owner() payable {
    return owner
}

function proxy() payable {
    return proxyAddress
}

function withdraw() payable {
    call proxyAddress with:
       value eth.balance(this.address) wei
         gas 0 wei
    require ext_call.success
}

function _fallback() payable {
    create contract with 0 wei
                    code: code.data[282 len 42]
    create contract with 0 wei
                    code: code.data[324 len 42]
}

function sub_cef7cfa9(?) payable {
    idx = arg1
    while idx > 0:
        mem[96 len 42] = code.data[366 len 42]
        create contract with 0 wei
                        code: code.data[366 len 42]
        idx = idx - 1
        continue 
}



}

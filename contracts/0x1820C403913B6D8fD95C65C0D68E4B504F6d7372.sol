contract main {




// =====================  Runtime code  =====================


address stor1;
uint256 nonce;

function nonce() {
    return nonce
}

function getNonce() {
    return nonce
}

function _fallback() payable {
    revert
}

function sub_ce7929b5(?) {
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_9eafaa84(?) payable {
    idx = 0
    while idx < arg1:
        mem[96 len 82] = code.data[484 len 82]
        create contract with 0 wei
                        code: code.data[484 len 82]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        nonce++
        idx = idx + 1
        continue 
    create contract with callvalue wei
                    code: code.data[566 len 500], arg2
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    nonce += arg2
}

function sub_adcdfa90(?) payable {
    idx = 0
    while idx < arg1:
        mem[96 len 82] = code.data[484 len 82]
        create contract with 0 wei
                        code: code.data[484 len 82]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        nonce++
        idx = idx + 1
        continue 
    create contract with callvalue wei
                    code: code.data[566 len 500], arg2
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    nonce += arg2
}



}

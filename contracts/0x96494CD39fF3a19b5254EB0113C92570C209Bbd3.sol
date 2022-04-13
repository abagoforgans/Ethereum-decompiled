contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    create contract with 0 wei
                    code: code.data[376 len 7509], 417509 * 3600, 422190 * 3600, 100, 0xd152e2a527a326b8df0afbd3ec21dba3746f9b4a
    require create.new_address
    stor0 = address(create.new_address)
    return code.data[187 len 189]
}



// =====================  Runtime code  =====================


address crowdsaleAddress;

function crowdsaleAddress() {
    return crowdsaleAddress
}

function _fallback() payable {
    revert
}



}

contract main {




// =====================  Runtime code  =====================


uint256 totalBurned;

function totalBurned() {
    return totalBurned
}

function _fallback() payable {
    revert
}

function Burn() payable {
    totalBurned += msg.value
}

function Purge() {
    call msg.sender with:
       value eth.balance(this.address) / 1000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    create contract with ('balance', 'address') wei
                    code: 12543
}



}

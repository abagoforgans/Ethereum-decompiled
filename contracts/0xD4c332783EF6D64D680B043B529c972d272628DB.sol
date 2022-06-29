contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 333]




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
    require ext_call.success
    create contract with ('balance', 'address') wei
                    code: 12543
}



}

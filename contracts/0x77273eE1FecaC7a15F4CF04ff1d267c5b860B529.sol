contract main {


// =======================  Init code  ======================


function _fallback() payable {
    create contract with 0 wei
                    code: code.data[98 len 53]
    idx = 5
    while uint8(idx) > 0:
        call address(create.new_address) with:
             gas gas_remaining - 25050 wei
        idx = idx - 1
        continue 
    selfdestruct(msg.sender)
}



// =====================  Runtime code  =====================


const _fallback = code.data[16 len 37]




}

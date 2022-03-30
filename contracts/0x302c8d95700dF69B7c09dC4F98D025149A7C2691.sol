contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    create contract with 0 wei
                    code: code.data[443 len 2387], code.data[2842 len 20], code.data[2862 len 32], code.data[2894 len 32], code.data[2926 len 32], code.data[2970 len 20], msg.sender
    require create.new_address
    stor0 = address(create.new_address)
    return code.data[392 len 51]
}



// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}



}

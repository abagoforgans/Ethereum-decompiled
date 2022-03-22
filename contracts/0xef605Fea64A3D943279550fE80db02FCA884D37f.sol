contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1481]




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function createContract() payable {
    create contract with 0 wei
                    code: code.data[106 len 1375]
    return address(create.new_address)
}



}

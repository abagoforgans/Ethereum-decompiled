contract main {


// =======================  Init code  ======================


const _fallback = code.data[16 len 164]




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function newContract(bytes arg1) payable {
    create contract with callvalue wei
                    code: call.data[68 len arg1.length]
    return address(create.new_address)
}



}

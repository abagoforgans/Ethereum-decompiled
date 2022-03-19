contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 10904]




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function createDAO(address arg1, uint256 arg2, uint256 arg3) payable {
    create contract with 0 wei
                    code: code.data[168 len 10736], address(arg1), address(this.address), arg2, arg3, msg.sender
    return address(create.new_address)
}



}

contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 382]




// =====================  Runtime code  =====================


mapping of struct stor0;

function sub_8f1e5f0b(?) payable {
    stor0[address(msg.sender)].field_0 = msg.sender or Mask(96, 160, stor0[address(msg.sender)].field_0)
    stor0[address(msg.sender)].field_256 = 0
    stor0[address(msg.sender)].field_512 = arg1 or Mask(96, 160, stor0[address(msg.sender)].field_512)
    stor0[address(msg.sender)].field_768 = 0
}

function _fallback() payable {
    if stor0[address(msg.sender)].field_512 <= 0:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        require ext_call.success
    else:
        delegate stor0[address(msg.sender)].field_512 with:
           funct call.data[0 len 4]
             gas gas_remaining - 50 wei
            args call.data[4 len calldata.size - 4]
        require delegate.return_code
        require delegate.return_data[0]
        if msg.value > 0:
            call stor0[address(msg.sender)].field_512 with:
               value msg.value wei
                 gas 0 wei
            require ext_call.success
    emit 0xd2e2337a 
}



}

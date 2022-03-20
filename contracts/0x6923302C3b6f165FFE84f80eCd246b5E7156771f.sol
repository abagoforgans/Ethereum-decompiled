contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint8 stor5; offset 160
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    stor0 = code.data[1891 len 32]
    stor1 = code.data[1923 len 32]
    stor2 = code.data[1955 len 32]
    stor3 = code.data[1987 len 32]
    stor4 = code.data[2019 len 32]
    uint256(stor5.field_0) = msg.sender or Mask(96, 160, uint256(stor5.field_0))
    uint8(stor5.field_160) = 0
    stor6 = msg.value
    emit 0xd9d91b39: Array(len=39, data='New Trade agreement between two ', 'parties'), code.data[1891 len 32], code.data[1987 len 32], msg.value
    return code.data[461 len 1430]
}



// =====================  Runtime code  =====================


address stor2;
uint8 stor5; offset 160
uint256 stor6;
address stor7;
uint256 stor7;

function _fallback() payable {
  stop
}

function sub_9889cf64(?) payable {
    stor5 = 1
    call stor2 with:
       value stor6 wei
         gas 0 wei
    emit 0xaf2f17dc: Array(len=17, data='Payment released!'), stor6
}

function sub_cb3f9ace(?) payable {
    create contract with 0 wei
                    code: code.data[834 len 596], arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11
    uint256(stor7) = create.new_address or Mask(96, 160, uint256(stor7))
    emit 0x99c0317f: code.data[834 len 32], address(stor7), 41, 'A new bill of lading has just be', 'en issued'
    stor5 = 1
    call stor2 with:
       value stor6 wei
         gas 0 wei
    emit 0xaf2f17dc: code.data[834 len 32], stor6, 17, 'Payment released!'
}



}

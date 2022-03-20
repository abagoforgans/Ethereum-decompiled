contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint8 stor7; offset 160
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;

function _fallback() payable {
    stor0 = code.data[1890 len 32]
    stor1 = code.data[1922 len 32]
    stor3 = code.data[1954 len 32]
    stor2 = code.data[1986 len 32]
    stor4 = code.data[2018 len 32]
    stor5 = code.data[2050 len 32]
    uint256(stor7.field_0) = msg.sender or Mask(96, 160, uint256(stor7.field_0))
    stor6 = code.data[2082 len 32]
    uint8(stor7.field_160) = 0
    stor8 = code.data[2114 len 32]
    stor9 = code.data[2146 len 32]
    stor10 = msg.value
    emit 0xd9d91b39: Array(len=39, data='New Trade agreement between two ', 'parties'), code.data[1890 len 32], code.data[2018 len 32], msg.value
    return code.data[566 len 1324]
}



// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor6;
uint8 stor7; offset 160
uint256 stor8;
uint256 stor9;
uint256 stor10;
address stor11;
uint256 stor11;

function _fallback() payable {
  stop
}

function sub_9889cf64(?) payable {
    stor7 = 1
    call stor3 with:
       value stor10 wei
         gas 0 wei
    emit 0xaf2f17dc: Array(len=17, data='Payment released!'), stor10
}

function sub_140d592b(?) payable {
    create contract with 0 wei
                    code: code.data[804 len 520], stor0, stor1, stor8, stor9, stor2, stor6, arg1, arg2, arg3
    uint256(stor11) = create.new_address or Mask(96, 160, uint256(stor11))
    emit 0x99c0317f: code.data[804 len 32], address(stor11), 41, 'A new bill of lading has just be', 'en issued'
    stor7 = 1
    call stor3 with:
       value stor10 wei
         gas 0 wei
    emit 0xaf2f17dc: code.data[804 len 32], stor10, 17, 'Payment released!'
}



}

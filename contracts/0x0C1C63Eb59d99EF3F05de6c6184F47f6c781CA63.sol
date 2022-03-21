contract main {


// =======================  Init code  ======================


address stor8;
uint256 stor10;

function _fallback() payable {
    stor8 = 0x233820087a752349ee20daab1c18e0b7c546d3f6
    stor10 = msg.sender or Mask(96, 160, stor10)
    return code.data[74 len 483]
}



// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor6;
uint256 stor7;
address stor8;
uint256 stor9;
address stor10;

function _fallback() payable {
  stop
}

function withdraw() payable {
    require stor10 == msg.sender
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 0 wei
}

function bet() payable {
    call stor8.Under_the_Hood() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    stor7 = ext_call.return_data[64]
    stor6 = ext_call.return_data[32]
    stor0 = block.number
    stor1 = block.hash(block.number - 1) + (ext_call.return_data[0] % block.timestamp) + (block.number * block.timestamp * block.difficulty) + 1 % 0x36ce80b791850e292b0f092bb007da906561520482
    idx = 10010
    while idx > 1000:
        if stor1 % idx != 0:
            idx = idx - 1
            continue 
        stor4 = idx
        stor9 = 10 * 10^18 / stor4 - 10
        stor2 = (10 * 10^18 / stor9) + 10
        stor3 = stor1 % stor2
        if 0 == stor3:
            call stor8 with:
               value stor9 wei
                 gas 3 * 10^6 wei
    stor9 = 10 * 10^18 / stor4 - 10
    stor2 = (10 * 10^18 / stor9) + 10
    stor3 = stor1 % stor2
    if 0 == stor3:
        call stor8 with:
           value stor9 wei
             gas 3 * 10^6 wei
}



}

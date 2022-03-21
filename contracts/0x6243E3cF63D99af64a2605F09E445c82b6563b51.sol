contract main {


// =======================  Init code  ======================


uint256 stor1;
address stor5; offset 8
uint256 stor7;

function _fallback() payable {
    stor1 = 0x293476fc4426cefa8298d695d556dff89c2d2f72b8
    stor5 = 0x233820087a752349ee20daab1c18e0b7c546d3f6
    stor7 = msg.sender or Mask(96, 160, stor7)
    return code.data[103 len 356]
}



// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5; offset 8
uint256 stor6;
address stor7;

function _fallback() payable {
  stop
}

function withdraw() payable {
    require stor7 == msg.sender
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 0 wei
}

function bet() payable {
    stor0 = block.number
    stor1 = block.hash(block.number - 1) + (stor1 % block.timestamp) + (block.number * block.timestamp * block.difficulty) + 1 % 0x36ce80b791850e292b0f092bb007da906561520482
    idx = 10010
    while idx > 100:
        if stor1 % idx != 0:
            idx = idx - 1
            continue 
        stor4 = idx
        stor6 = 10 * 10^18 / stor4 - 10
        stor2 = (10 * 10^18 / stor6) + 10
        stor3 = stor1 % stor2
        if 0 == stor3:
            call stor5 with:
               value stor6 wei
                 gas 100000 wei
    stor6 = 10 * 10^18 / stor4 - 10
    stor2 = (10 * 10^18 / stor6) + 10
    stor3 = stor1 % stor2
    if 0 == stor3:
        call stor5 with:
           value stor6 wei
             gas 100000 wei
}



}

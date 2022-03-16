contract main {


// =======================  Init code  ======================


uint256 stor3;
uint256 stor4;
uint256 stor12;

function _fallback() payable {
    create contract with 0 wei
                    code: code.data[224 len 577]
    stor3 = create.new_address or Mask(96, 160, stor3)
    create contract with 0 wei
                    code: code.data[801 len 577]
    stor4 = create.new_address or Mask(96, 160, stor4)
    create contract with 0 wei
                    code: code.data[1378 len 5308]
    stor12 = create.new_address or Mask(96, 160, stor12)
    return code.data[6686 len 11835]
}



// =====================  Runtime code  =====================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[63 len 514]
}



}

contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;

function _fallback() payable {
    stor0['rock']['rock'] = 0
    stor0['rock']['paper'] = 2
    stor0['rock']['scissors'] = 1
    stor0['paper']['rock'] = 1
    stor0['paper']['paper'] = 0
    stor0['paper']['scissors'] = 2
    stor0['scissors']['rock'] = 2
    stor0['scissors']['paper'] = 1
    stor0['scissors']['scissors'] = 0
    return code.data[1307 len 2910]
}



// =====================  Runtime code  =====================


#
#  - play(string arg1)
#
const getMyBalance = eth.balance(msg.sender)

const getContractBalance = eth.balance(this.address)


address stor1;
uint256 stor1;
address stor2;
uint256 stor2;

function _fallback() payable {
  stop
}

function AmIPlayer1() payable {
    return (msg.sender == address(stor1))
}

function AmIPlayer2() payable {
    return (msg.sender == address(stor2))
}

function register() payable {
    require msg.value >= 5
    require address(stor1) != msg.sender
    require address(stor2) != msg.sender
    if not address(stor1):
        uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
    else:
        if not address(stor2):
            uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
}



}

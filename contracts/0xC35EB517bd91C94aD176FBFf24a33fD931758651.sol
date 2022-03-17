contract main {


// =======================  Init code  ======================


uint256 stor0;
uint8 stor2; offset 160

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor2 = 0
    return code.data[52 len 619]
}



// =====================  Runtime code  =====================


address owner;
address botContractAddress;
uint256 stor1;
uint8 stor2; offset 160
address usersContractAddress;
uint256 stor2;
mapping of struct coinWallet;

function getBotContract() payable {
    return address(botContractAddress)
}

function getCoinWallet(bytes4 arg1) payable {
    return coinWallet[arg1].field_32
}

function getOwner() payable {
    return owner
}

function getUsersContract() payable {
    return usersContractAddress
}

function _fallback() payable {
  stop
}

function lockConfiguration() payable {
    if owner == msg.sender:
        uint8(stor2.field_160) = 1
}

function setBotContract(address arg1) payable {
    if owner == msg.sender:
        if 0 == uint8(stor2.field_160):
            uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function setUsersContract(address arg1) payable {
    if owner == msg.sender:
        if 0 == uint8(stor2.field_160):
            uint256(stor2.field_0) = arg1 or Mask(96, 160, uint256(stor2.field_0))
}

function addCoin(bytes4 arg1, address arg2) payable {
    if owner == msg.sender:
        if not coinWallet[arg1].field_192:
            coinWallet[arg1].field_0 = arg1
            coinWallet[arg1].field_32 = arg2
            coinWallet[arg1].field_192 = 1
            coinWallet[arg1].field_200 = Mask(56, 168, arg2) >> 168
}



}

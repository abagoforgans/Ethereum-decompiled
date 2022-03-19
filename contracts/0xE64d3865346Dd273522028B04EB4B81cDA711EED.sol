contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor3;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor3 = code.data[682 len 32]
    return code.data[60 len 622]
}



// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)

const getAddress = address(this.address)


address sub_7c4822c0Address;
address sub_d173b392Address;
uint256 stor1;
uint256 stor2;
uint256 stor3;
mapping of uint256 sub_c0896578;

function sub_4cc80b79(?) payable {
    return address(sub_d173b392Address)
}

function sub_7c4822c0(?) payable {
    return sub_7c4822c0Address
}

function sub_c0896578(?) payable {
    return sub_c0896578[arg1]
}

function sub_d173b392(?) payable {
    return address(sub_d173b392Address)
}

function _fallback() payable {
  stop
}

function sub_b5af8556(?) payable {
    stor3 = arg1
}

function setUnlockTime(uint256 arg1) payable {
    stor2 = arg1
}

function sub_1c6cc8c4(?) payable {
    sub_c0896578[address(arg1)] = 100
}

function sub_1fb1c61e(?) payable {
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function sub_406e3e07(?) payable {
    if block.timestamp > stor2:
        call sub_7c4822c0Address with:
           value eth.balance(this.address) wei
             gas 0 wei
}

function check(address arg1) payable {
    if block.timestamp > stor2 - (48 * 24 * 3600):
        return 0
    if sub_c0896578[address(arg1)] <= 0:
        return 0
    return 1
}

function sub_ac9b845d(?) payable {
    if sub_c0896578[address(msg.sender)] > 0:
        call msg.sender with:
           value stor3 wei
             gas 0 wei
        call address(sub_d173b392Address) with:
           value eth.balance(this.address) wei
             gas 0 wei
}



}

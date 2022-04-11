contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
mapping of uint256 stor3;

function _fallback() {
    stor1 = msg.sender
    stor2 = 100000000 * 10^18
    stor3[address(msg.sender)] = 100000000 * 10^18
    stor0 = 0x6c5140f605a9add003b3626aae4f08f41e6c6fff
    return code.data[123 len 1686]
}



// =====================  Runtime code  =====================


const name = 'OwO.World Token'

const decimals = 18

const symbol = 'OWO'


address _multiSigWalletAddress;
address owner;
uint256 totalSupply;
mapping of uint256 balanceOf;

function totalSupply() {
    return totalSupply
}

function getMultiSigWallet() {
    return _multiSigWalletAddress
}

function _multiSigWallet() {
    return _multiSigWalletAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function getTotalSupply() {
    return totalSupply
}

function getMultiSigBalance() {
    return balanceOf[stor0]
}

function _fallback() payable {
  stop
}

function setMultiSigWallet(address arg1) {
    require owner == msg.sender
    require arg1
    _multiSigWalletAddress = arg1
    emit changed(msg.sender);
}

function withdraw() payable {
    require owner == msg.sender
    call _multiSigWalletAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= 10^18 * arg2
    require 10^18 * arg2 <= balanceOf[address(msg.sender)]
    require (10^18 * arg2) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    emit Transfer((10^18 * arg2), msg.sender, arg1);
    return 1
}



}

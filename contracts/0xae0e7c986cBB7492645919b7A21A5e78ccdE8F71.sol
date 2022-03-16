contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[166 len 1746]
}



// =====================  Runtime code  =====================


const isFunded = eth.balance(this.address) >= 10^18


address owner;
uint256 stor0;
address pyramidAddress;
uint256 stor1;

function pyramid() payable {
    return address(pyramidAddress)
}

function owner() payable {
    return address(owner)
}

function isOwner() payable {
    return (msg.sender == address(owner))
}

function queue() payable {
    if eth.balance(this.address) >= 10^18:
        emit Funded()
}

function _fallback() payable {
    if eth.balance(this.address) >= 10^18:
        emit Funded()
}

function sub_53ac5ff9(?) payable {
    if msg.sender == address(owner):
        uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function setOwner(address arg1) payable {
    if msg.sender == address(owner):
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function forward(bytes arg1, bytes arg2) payable {
    if msg.sender == address(owner):
        call address(pyramidAddress).enter(bytes rg1, bytes rg2) with:
           value 10^18 wei
             gas gas_remaining - 34050 wei
            args Array(len=arg1.length, data=arg1[all]), arg1.length + 96
        require ext_call.success
        if eth.balance(this.address) >= 75 * 10^16:
            call address(owner) with:
               value 5 * 10^17 wei
                 gas 0 wei
}



}

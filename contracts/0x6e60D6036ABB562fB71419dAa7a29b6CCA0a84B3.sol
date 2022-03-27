contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = code.data[1602 len 32]
    return code.data[69 len 1533]
}



// =====================  Runtime code  =====================


address _owner;
uint256 stor0;
address _filiateAddress;
uint256 stor1;
mapping of uint256 checkExec;

function CheckExec(string arg1) {
    return checkExec[arg1[all]]
}

function _filiate() {
    return address(_filiateAddress)
}

function _owner() {
    return address(_owner)
}

function kill() {
    if address(_owner) != msg.sender:
    selfdestruct(address(_owner))
}

function _fallback() payable {
    revert 
}

function ChangeOwner(address arg1) {
    if address(_owner) == msg.sender:
        require eth.balance(arg1) > 0
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
        emit Owner_Changed(arg1);
}

function AddExec(string arg1) {
    if msg.sender == address(_owner):
        if checkExec[arg1[all]] < 1:
            checkExec[arg1[all]] = 1
            emit Executed(Array(len=arg1.length, data=arg1[all]));
}

function ValidateExec(string arg1) {
    if msg.sender == address(_filiateAddress):
        if 1 == checkExec[arg1[all]]:
            checkExec[arg1[all]] = 2
            emit Validated(Array(len=arg1.length, data=arg1[all]));
}

function ChangeFiliate(address arg1) {
    if address(_owner) == msg.sender:
        require eth.balance(arg1) > 0
        uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
        emit Filiate_Changed(arg1);
    else:
        if msg.sender == address(_filiateAddress):
            require eth.balance(arg1) > 0
            uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
            emit Filiate_Changed(arg1);
}



}

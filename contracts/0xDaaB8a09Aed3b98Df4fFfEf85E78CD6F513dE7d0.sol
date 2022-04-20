contract main {


// =======================  Init code  ======================


mapping of uint8 stor0;
address stor1;
uint128 stor2; offset 160
address stor2;

function _fallback() {
    stor0[address(msg.sender)] = 1
    Mask(96, 0, stor2.field_160) = 1
    stor1 = msg.sender
    address(stor2.field_0) = code.data[4577 len 20]
    return code.data[303 len 4262]
}



// =====================  Runtime code  =====================


const CONTRACT_VERSION = 'A'

const CONTRACT_NAME = 'EtherealId'


mapping of uint8 stor0;
address stor1;
uint8 stor2; offset 160
uint128 stor2; offset 160
address ownerAddress;
mapping of uint8 stor3;
mapping of uint8 stor4;
mapping of uint8 stor5;

function IsActive() {
    return bool(uint8(stor2.field_160))
}

function CheckProofOfOwnership(bytes32 arg1) {
    return bool(stor3[arg1])
}

function OwnerAddress() {
    require not stor4[address(msg.sender)]
    return ownerAddress
}

function IsAuthorityAddress(address arg1) {
    require not stor4[address(msg.sender)]
    return bool(stor0[address(arg1)])
}

function VerifiedInfoHash(bytes32 arg1) {
    require not stor4[address(msg.sender)]
    return bool(stor5[arg1])
}

function IsBlocked(address arg1) {
    return bool(stor4[address(arg1)])
}

function Deactivate() {
    if ownerAddress != msg.sender:
        require stor0[address(msg.sender)]
    if not stor0[address(msg.sender)]:
        require msg.sender == ownerAddress
    Mask(96, 0, stor2.field_160) = 0
    selfdestruct(ownerAddress)
}

function _fallback() payable {
    revert
}

function SubmitProofOfOwnership(bytes32 arg1) {
    require msg.sender == ownerAddress
    stor3[arg1] = 1
}

function AddAuthorityAddress(address arg1) {
    require msg.sender == ownerAddress
    stor0[address(arg1)] = 1
}

function AddVerifiedInfo(bytes32 arg1) {
    require stor0[address(msg.sender)]
    stor5[arg1] = 1
    emit Added(arg1);
}

function RemoveVerifiedInfo(bytes32 arg1) {
    require stor0[address(msg.sender)]
    stor5[arg1] = 0
    emit Removed(arg1);
}

function RemoveAuthorityAddress(address arg1) {
    require msg.sender == ownerAddress
    require arg1 != stor1
    stor0[address(arg1)] = 0
}

function BlockAddress(address arg1) {
    if ownerAddress != msg.sender:
        require stor0[address(msg.sender)]
    stor4[address(arg1)] = 1
}

function RemoveProofOfOwnership(bytes32 arg1) {
    if ownerAddress != msg.sender:
        require stor0[address(msg.sender)]
    stor3[arg1] = 0
}

function UnBlockAddress(address arg1) {
    if ownerAddress != msg.sender:
        require stor0[address(msg.sender)]
    stor4[address(arg1)] = 0
}



}

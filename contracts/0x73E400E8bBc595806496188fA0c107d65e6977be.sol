contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
address stor6;
address stor7;

function _fallback() {
    mem[96 len -2136] = code.data[2522 len -2136]
    mem[64] = -2040
    stor0 = msg.sender
    stor6 = this.address
    stor7 = this.address
    stor2[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor3[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor4[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor5[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    return code.data[386 len 2136]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address stor0;
array of uint256 name;
array of uint256 description;
array of uint256 fileName;
array of uint256 fileHash;
array of uint256 fileData;
address revisionAddress;
address nextOwner;
address prevOwner;

function NextOwner() {
    return nextOwner
}

function FileHash() {
    return fileHash[0 len fileHash.length]
}

function FileData() {
    return fileData[0 len fileData.length]
}

function isSealed() {
    return bool(uint8(stor0.field_160))
}

function Name() {
    return name[0 len name.length]
}

function Description() {
    return description[0 len description.length]
}

function FileName() {
    return fileName[0 len fileName.length]
}

function Revision() {
    return revisionAddress
}

function PrevOwner() {
    return prevOwner
}

function kill() {
    require address(stor0.field_0) != msg.sender
    selfdestruct(address(stor0.field_0))
}

function _fallback() payable {
    revert
}

function setCreator(address arg1) {
    require address(stor0.field_0) != msg.sender
    address(stor0.field_0) = arg1
}

function setSealed() {
    require address(stor0.field_0) != msg.sender
    uint8(stor0.field_160) = 1
    emit EventSealed(this.address);
}

function setNextOwner(address arg1) {
    require address(stor0.field_0) != msg.sender
    require not uint8(stor0.field_160)
    nextOwner = arg1
    emit EventNewOwner(this.address);
}

function setPrevOwner(address arg1) {
    require address(stor0.field_0) != msg.sender
    require not uint8(stor0.field_160)
    prevOwner = arg1
    emit EventNewPrevOwner(this.address);
}

function setRevision(address arg1) {
    require address(stor0.field_0) != msg.sender
    require not uint8(stor0.field_160)
    revisionAddress = arg1
    emit EventNewRevision(this.address);
}



}

contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;
address stor21;

function _fallback() {
    stor0 = msg.sender
    emit EventCreated(address(this.address), msg.sender);
    stor1 = this.address
    stor2 = this.address
    stor3 = this.address
    stor21 = this.address
    return code.data[210 len 7939]
}



// =====================  Runtime code  =====================


#
#  - setData(string arg1, string arg2, string arg3, string arg4, string arg5, string arg6)
#
uint8 stor0; offset 160
address stor0;
address agriChainNextDataAddress;
address agriChainPrevDataAddress;
address agriChainRootDataAddress;
array of uint256 agriChainType;
array of uint256 agriChainLabel;
array of uint256 agriChainLabelInt;
array of uint256 agriChainDescription;
array of uint256 agriChainDescriptionInt;
array of uint256 emitter;
array of uint256 name;
array of uint256 description;
array of uint256 nameInt;
array of uint256 descriptionInt;
array of uint256 fileName;
array of uint256 fileHash;
array of uint256 fileData;
array of uint256 fileNameInt;
array of uint256 fileHashInt;
array of uint256 fileDataInt;
array of uint256 notes;
address revisionAddress;

function AgriChainNextData() {
    return agriChainNextDataAddress
}

function NameInt() {
    return nameInt[0 len nameInt.length]
}

function Emitter() {
    return emitter[0 len emitter.length]
}

function AgriChainRootData() {
    return agriChainRootDataAddress
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

function FileDataInt() {
    return fileDataInt[0 len fileDataInt.length]
}

function FileHashInt() {
    return fileHashInt[0 len fileHashInt.length]
}

function Name() {
    return name[0 len name.length]
}

function Description() {
    return description[0 len description.length]
}

function FileNameInt() {
    return fileNameInt[0 len fileNameInt.length]
}

function AgriChainDescription() {
    return agriChainDescription[0 len agriChainDescription.length]
}

function FileName() {
    return fileName[0 len fileName.length]
}

function Revision() {
    return revisionAddress
}

function Notes() {
    return notes[0 len notes.length]
}

function AgriChainLabelInt() {
    return agriChainLabelInt[0 len agriChainLabelInt.length]
}

function DescriptionInt() {
    return descriptionInt[0 len descriptionInt.length]
}

function AgriChainType() {
    return agriChainType[0 len agriChainType.length]
}

function AgriChainLabel() {
    return agriChainLabel[0 len agriChainLabel.length]
}

function AgriChainPrevData() {
    return agriChainPrevDataAddress
}

function AgriChainDescriptionInt() {
    return agriChainDescriptionInt[0 len agriChainDescriptionInt.length]
}

function kill() {
    require address(stor0.field_0) == msg.sender
    selfdestruct(address(stor0.field_0))
}

function _fallback() payable {
    revert
}

function setCreator(address arg1) {
    require address(stor0.field_0) == msg.sender
    address(stor0.field_0) = arg1
}

function setNotes(string arg1) {
    require address(stor0.field_0) == msg.sender
    notes[] = Array(len=arg1.length, data=arg1[all])
}

function setSealed() {
    require address(stor0.field_0) == msg.sender
    uint8(stor0.field_160) = 1
    emit EventSealed(this.address);
}

function setRevision(address arg1) {
    require address(stor0.field_0) == msg.sender
    require not uint8(stor0.field_160)
    revisionAddress = arg1
}

function setChain(address arg1, address arg2, address arg3) {
    require address(stor0.field_0) == msg.sender
    agriChainNextDataAddress = arg1
    agriChainPrevDataAddress = arg2
    agriChainRootDataAddress = arg3
    emit EventChanged(address(this.address), Array(len=5, data='Chain'));
}

function setDataInt(string arg1, string arg2) {
    require address(stor0.field_0) == msg.sender
    require not uint8(stor0.field_160)
    agriChainLabelInt[] = Array(len=arg1.length, data=arg1[all])
    agriChainDescriptionInt[] = Array(len=arg2.length, data=arg2[all])
    emit EventChanged(address(this.address), Array(len=7, data='DataInt'));
}

function setData(string arg1, string arg2, string arg3) {
    require address(stor0.field_0) == msg.sender
    require not uint8(stor0.field_160)
    agriChainType[] = Array(len=arg1.length, data=arg1[all])
    agriChainLabel[] = Array(len=arg2.length, data=arg2[all])
    agriChainDescription[] = Array(len=arg3.length, data=arg3[all])
    emit EventChanged(address rg1, string rg2):
                      address(this.address),
                      64,
                      4,
                      0x4461746100000000000000000000000000000000000000000000000000000000,
}



}

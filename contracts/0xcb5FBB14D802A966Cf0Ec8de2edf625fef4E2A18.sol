contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
array of uint256 stor6;
address stor8;

function _fallback() {
    mem[96 len -3299] = code.data[3777 len -3299]
    mem[64] = -3203
    stor0 = msg.sender
    stor8 = this.address
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor2[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor3[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor4[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    stor5[] = Array(len=mem[mem[224] + 96], data=mem[mem[224] + 128 len mem[mem[224] + 96]])
    stor6[] = Array(len=mem[mem[256] + 96], data=mem[mem[256] + 128 len mem[mem[256] + 96]])
    return code.data[478 len 3299]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 emitter;
array of uint256 name;
array of uint256 description;
array of uint256 fileName;
array of uint256 fileHash;
array of uint256 fileData;
array of uint256 notes;
address revisionAddress;
array of uint256 sub_c5c04c44;

function Emitter() {
    return emitter[0 len emitter.length]
}

function FileHash() {
    return fileHash[0 len fileHash.length]
}

function FileData() {
    return fileData[0 len fileData.length]
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

function sub_c5c04c44(?) {
    require arg1 < sub_c5c04c44.length
    return sub_c5c04c44[arg1]
}

function Revision() {
    return revisionAddress
}

function Notes() {
    return notes[0 len notes.length]
}

function kill() {
    require stor0 != msg.sender
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function setCreator(address arg1) {
    require stor0 != msg.sender
    stor0 = arg1
}

function setRevision(address arg1) {
    require stor0 != msg.sender
    revisionAddress = arg1
}

function setNotes(string arg1) {
    require stor0 != msg.sender
    notes[] = Array(len=arg1.length, data=arg1[all])
}

function sub_8e06caa3(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require stor0 != msg.sender
    sub_c5c04c44.length = arg1.length
    if not arg1.length:
        idx = 0
        while sub_c5c04c44.length > idx:
            sub_c5c04c44[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            sub_c5c04c44[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while sub_c5c04c44.length > idx:
            sub_c5c04c44[idx] = 0
            idx = idx + 1
            continue 
}



}

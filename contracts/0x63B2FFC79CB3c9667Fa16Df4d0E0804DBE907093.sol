contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


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

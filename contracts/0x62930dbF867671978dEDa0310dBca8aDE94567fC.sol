contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;

function _fallback() payable {
    stor2 = 0
    require not msg.value
    stor0 = msg.sender
    return code.data[61 len 3335]
}



// =====================  Runtime code  =====================


#
#  - getDocument(uint256 arg1)
#
address stor0;
mapping of struct documentSign;
uint256 documentsCount;

function getDocumentsCount() {
    return documentsCount
}

function documentsIds(uint256 arg1) {
    mem[320] = documentSign[arg1].field_0
    idx = 320
    s = 0
    while documentSign[arg1].length + 320 > idx + 32:
        mem[idx + 32] = documentSign[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[documentSign[arg1].length + (floor32(documentSign[arg1].length - 1) + -documentSign[arg1].length + 32 % 32) + 320] = documentSign[arg1][1].length
    mem[documentSign[arg1].length + (floor32(documentSign[arg1].length - 1) + -documentSign[arg1].length + 32 % 32) + 352] = documentSign[arg1][1].field_0
    idx = documentSign[arg1].length + (floor32(documentSign[arg1].length - 1) + -documentSign[arg1].length + 32 % 32) + 352
    s = 0
    while documentSign[arg1].length + (floor32(documentSign[arg1].length - 1) + -documentSign[arg1].length + 32 % 32) + documentSign[arg1][1].length + 352 > idx + 32:
        mem[idx + 32] = documentSign[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[documentSign[arg1].length + (floor32(documentSign[arg1].length - 1) + -documentSign[arg1].length + 32 % 32) + documentSign[arg1][1].length + (floor32(documentSign[arg1][1].length - 1) + -documentSign[arg1][1].length + 32 % 32) + 384] = documentSign[arg1][2].field_0
    idx = documentSign[arg1].length + (floor32(documentSign[arg1].length - 1) + -documentSign[arg1].length + 32 % 32) + documentSign[arg1][1].length + (floor32(documentSign[arg1][1].length - 1) + -documentSign[arg1][1].length + 32 % 32) + 384
    s = 0
    while documentSign[arg1].length + (floor32(documentSign[arg1].length - 1) + -documentSign[arg1].length + 32 % 32) + documentSign[arg1][1].length + (floor32(documentSign[arg1][1].length - 1) + -documentSign[arg1][1].length + 32 % 32) + documentSign[arg1][2].length + 384 > idx + 32:
        mem[idx + 32] = documentSign[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=documentSign[arg1].length, data=mem[320 len documentSign[arg1].length + (floor32(documentSign[arg1].length - 1) + -documentSign[arg1].length + 32 % 32) + documentSign[arg1][1].length + (floor32(documentSign[arg1][1].length - 1) + -documentSign[arg1][1].length + 32 % 32) + 32], documentSign[arg1][2].length, mem[documentSign[arg1].length + (floor32(documentSign[arg1].length - 1) + -documentSign[arg1].length + 32 % 32) + documentSign[arg1][1].length + (floor32(documentSign[arg1][1].length - 1) + -documentSign[arg1][1].length + 32 % 32) + 384 len documentSign[arg1][2].length + (floor32(documentSign[arg1][2].length - 1) + -documentSign[arg1][2].length + 32 % 32)]), 
           documentSign[arg1].length + (floor32(documentSign[arg1].length - 1) + -documentSign[arg1].length + 32 % 32) + 224,
           documentSign[arg1].length + (floor32(documentSign[arg1].length - 1) + -documentSign[arg1].length + 32 % 32) + documentSign[arg1][1].length + (floor32(documentSign[arg1][1].length - 1) + -documentSign[arg1][1].length + 32 % 32) + 256,
           documentSign[arg1].field_768,
           documentSign[arg1].field_1024,
           documentSign[arg1].field_1280
}

function getDocumentSignsCount(uint256 arg1) {
    return documentSign[arg1].field_1280
}

function getDocumentSign(uint256 arg1, uint256 arg2) {
    return documentSign[arg1][6][arg2].field_0, documentSign[arg1][6][arg2].field_256
}

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert 
}

function changeOwner(address arg1) {
    if stor0 == msg.sender:
        stor0 = arg1
}

function addSignature(uint256 arg1) {
    if documentSign[arg1].field_1280:
        idx = 0
        while idx < documentSign[arg1].field_1280:
            mem[0] = idx
            mem[32] = sha3(arg1, 1) + 6
            if documentSign[arg1][6][idx].field_0 != msg.sender:
                idx = idx + 1
                continue 
    documentSign[arg1][6][documentSign[arg1].field_1280].field_0 = msg.sender
    documentSign[arg1][6][documentSign[arg1].field_1280].field_256 = block.timestamp
    documentSign[arg1].field_1280++
    emit DocumentSigned(arg1, msg.sender);
}

function registerDocument(string arg1, string arg2, string arg3) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg3.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg3.length] = arg3[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224] = ceil32(arg1.length) + 128
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 256] = ceil32(arg1.length) + ceil32(arg2.length) + 160
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 288] = msg.sender
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 320] = block.timestamp
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 352] = 0
    documentSign[stor2 + 1][].field_0 = Array(len=arg1.length, data=arg1[all])
    documentSign[stor2 + 1].field_256 = (2 * arg2.length) + 1
    s = 0
    idx = ceil32(arg1.length) + 160
    while ceil32(arg1.length) + arg2.length + 160 > idx:
        documentSign[stor2 + 1][s + 1].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if documentSign[stor2 + 1][1].length + 31 / 32 > Mask(251, 0, arg2.length + 31) >> 5:
        stor[('array', 1, ('map', ('add', 1, ('stor', ('name', 'stor2', 2))), ('name', 'documentSign', 1))) + (Mask(251, 0, arg2.length + 31) >> 5)].field_0 = 0
        idx = (Mask(251, 0, arg2.length + 31) >> 5) + 1
        while documentSign[stor2 + 1][1].length + 31 / 32 > idx:
            documentSign[stor2 + 1][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    documentSign[stor2 + 1].field_512 = (2 * arg3.length) + 1
    s = 0
    idx = ceil32(arg1.length) + ceil32(arg2.length) + 192
    while ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192 > idx:
        documentSign[stor2 + 1][s + 2].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if documentSign[stor2 + 1][2].length + 31 / 32 > Mask(251, 0, arg3.length + 31) >> 5:
        stor[('array', 2, ('map', ('add', 1, ('stor', ('name', 'stor2', 2))), ('name', 'documentSign', 1))) + (Mask(251, 0, arg3.length + 31) >> 5)].field_0 = 0
        idx = (Mask(251, 0, arg3.length + 31) >> 5) + 1
        while documentSign[stor2 + 1][2].length + 31 / 32 > idx:
            documentSign[stor2 + 1][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    documentSign[stor2 + 1].field_768 = msg.sender
    documentSign[stor2 + 1].field_1024 = block.timestamp
    documentSign[stor2 + 1].field_1280 = 0
    documentsCount++
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 384] = documentsCount + 1
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 416] = 64
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 448] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480] = mem[128]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    emit DocumentRegistered(documentsCount + 1, Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480 len arg1.length]));
}



}

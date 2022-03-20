contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 1085]
}



// =====================  Runtime code  =====================


uint16 stor0;
uint16 numEntries; offset 160
uint128 stor0; offset 160
address owner;
mapping of struct sub_3cdba68f;

function getNumEntries() payable {
    return numEntries
}

function sub_3cdba68f(?) payable {
    mem[160] = sub_3cdba68f[arg1 << 240][1].field_0
    idx = 160
    s = 0
    while sub_3cdba68f[arg1 << 240][1].length + 160 > idx + 32:
        mem[idx + 32] = sub_3cdba68f[arg1 << 240][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_3cdba68f[arg1 << 240].field_0, 
           Array(len=sub_3cdba68f[arg1 << 240][1].length, data=mem[160 len sub_3cdba68f[arg1 << 240][1].length]),
           sub_3cdba68f[arg1 << 240].field_512,
           sub_3cdba68f[arg1 << 240].field_768,
           sub_3cdba68f[arg1 << 240].field_1024
}

function getOwner() payable {
    return owner
}

function remove() payable {
    if owner != msg.sender:
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function sub_4a1bca7b(?) payable {
    if owner == msg.sender:
        sub_3cdba68f[arg1 << 240].field_1024 = sub_3cdba68f[arg1 << 240].field_1032
}

function addEntry(string arg1) payable {
    sub_3cdba68f[uint16(stor0.field_0)].field_0 = sub_3cdba68f[uint16(stor0.field_0)].field_160
    sub_3cdba68f[uint16(stor0.field_0)][1][].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_3cdba68f[uint16(stor0.field_0)].field_512 = block.number
    sub_3cdba68f[uint16(stor0.field_0)].field_768 = block.timestamp
    sub_3cdba68f[uint16(stor0.field_0)].field_1024 = 0
    sub_3cdba68f[uint16(stor0.field_0)].field_1280 = 0
    Mask(96, 0, stor0.field_160) = Mask(96, 0, numEntries + 1)
}



}

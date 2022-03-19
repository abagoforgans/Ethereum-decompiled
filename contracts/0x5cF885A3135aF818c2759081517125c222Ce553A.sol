contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor0;
mapping of uint256 stor1;

function _fallback() payable {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    stor1[address(stor0)] = 0
    return code.data[150 len 2869]
}



// =====================  Runtime code  =====================


const getLatestBlock = block.number


address stor0;
mapping of uint256 stor1;
mapping of struct sub_0dd41aab;

function sub_0dd41aab(?) payable {
    return sub_0dd41aab[address(msg.sender)].field_768
}

function getBalance() payable {
    return sub_0dd41aab[address(msg.sender)].field_0
}

function sub_43e7519d(?) payable {
    return sub_0dd41aab[address(msg.sender)].field_512
}

function sub_60aa825a(?) payable {
    return sub_0dd41aab[address(msg.sender)].field_256
}

function sub_e5986c23(?) payable {
    sub_0dd41aab[address(msg.sender)].field_512 = 0
}

function getFeeBalance() payable {
    if stor0 != msg.sender:
        return 0
    return stor1[stor0]
}

function sub_d762879a(?) payable {
    sub_0dd41aab[address(msg.sender)].field_512 = 1
    sub_0dd41aab[address(msg.sender)].field_768 = block.number
}

function withdrawFees() payable {
    if msg.sender == stor0:
        call stor0 with:
           value stor1[stor0] wei
             gas 0 wei
        stor1[stor0] = 0
}

function sub_26d57f77(?) payable {
    if sub_0dd41aab[address(msg.sender)].field_256 <= 0:
        if arg1 <= block.number + (2500 * 3600):
            sub_0dd41aab[address(msg.sender)].field_256 = arg1
}

function main() payable {
    stor1[stor0] += msg.value / 200
    sub_0dd41aab[address(msg.sender)].field_0 = sub_0dd41aab[address(msg.sender)].field_0 + msg.value - (msg.value / 200)
    if sub_0dd41aab[address(msg.sender)].field_256 <= 0:
        sub_0dd41aab[address(msg.sender)].field_256 = 0
}

function _fallback() payable {
    stor1[stor0] += msg.value / 200
    sub_0dd41aab[address(msg.sender)].field_0 = sub_0dd41aab[address(msg.sender)].field_0 + msg.value - (msg.value / 200)
    if sub_0dd41aab[address(msg.sender)].field_256 <= 0:
        sub_0dd41aab[address(msg.sender)].field_256 = 0
}

function withdraw() payable {
    if sub_0dd41aab[address(msg.sender)].field_512 != 1:
        if sub_0dd41aab[address(msg.sender)].field_256 <= block.number:
            call msg.sender with:
               value sub_0dd41aab[address(msg.sender)].field_0 wei
                 gas 0 wei
            sub_0dd41aab[address(msg.sender)].field_0 = 0
            sub_0dd41aab[address(msg.sender)].field_256 = 0
    else:
        if sub_0dd41aab[address(msg.sender)].field_256 > block.number:
            call msg.sender with:
               value (block.number * sub_0dd41aab[address(msg.sender)].field_0 / sub_0dd41aab[address(msg.sender)].field_256 - sub_0dd41aab[address(msg.sender)].field_768) - (sub_0dd41aab[address(msg.sender)].field_768 * sub_0dd41aab[address(msg.sender)].field_0 / sub_0dd41aab[address(msg.sender)].field_256 - sub_0dd41aab[address(msg.sender)].field_768) wei
                 gas 0 wei
            sub_0dd41aab[address(msg.sender)].field_0 = sub_0dd41aab[address(msg.sender)].field_0 - (block.number * sub_0dd41aab[address(msg.sender)].field_0 / sub_0dd41aab[address(msg.sender)].field_256 - sub_0dd41aab[address(msg.sender)].field_768) + (sub_0dd41aab[address(msg.sender)].field_768 * sub_0dd41aab[address(msg.sender)].field_0 / sub_0dd41aab[address(msg.sender)].field_256 - sub_0dd41aab[address(msg.sender)].field_768)
            sub_0dd41aab[address(msg.sender)].field_768 = block.number
        else:
            if sub_0dd41aab[address(msg.sender)].field_256 <= block.number:
                call msg.sender with:
                   value sub_0dd41aab[address(msg.sender)].field_0 wei
                     gas 0 wei
                sub_0dd41aab[address(msg.sender)].field_0 = 0
                sub_0dd41aab[address(msg.sender)].field_256 = 0
}



}

contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 1297]




// =====================  Runtime code  =====================


array of uint256 stor0;
mapping of uint256 stor1;
mapping of uint256 stor2;
array of struct stor3;
mapping of uint256 stor4;
address stor5;

function Registration() {
  stop
}

function _fallback() payable {
    revert
}

function sub_db0e87f5(?) {
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = stor0.length + 1
        while stor0.length > idx:
            stor0[idx] = 0
            idx = idx + 1
            continue 
    stor0[stor0.length] = arg1
    stor1[arg1] = stor0.length
    stor2[stor0.length] = arg1
}

function createPlayer(string arg1) {
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        mem[0] = 3
        idx = 2 * stor3.length + 1
        while sha3(3) + (2 * stor3.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            address(stor[idx + sha3(mem[0]) + 1]) = 0
            idx = idx + 2
            continue 
    uint256(stor3[stor3.length][].field_0) = Array(len=arg1.length, data=arg1[all])
    address(stor3[stor3.length].field_256) = msg.sender
    stor4[address(msg.sender)] = stor3.length
    require ext_code.size(stor5)
    call stor5.0xdb0e87f5 with:
         gas gas_remaining - 710 wei
        args stor3.length
    require ext_call.success
}



}

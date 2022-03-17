contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
uint256 stor7;
mapping of uint256 stor8;
uint256 stor4DB7;

function _fallback() payable {
    mem[96 len -3378] = code.data[3930 len -3378]
    mem[64] = -3218
    stor4DB7 = 1
    stor1 = mem[96]
    stor2 = tx.origin or Mask(96, 160, stor2)
    bool(stor3.length) = 0
    uint255(stor3.length.field_1) = 2
    Mask(248, 0, stor3.length.field_8) = 'VE' / 256
    idx = 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85b
    while (stor3.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor4[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor8[tx.origin] = 1
    stor7 = 1
    return code.data[552 len 3378]
}



// =====================  Runtime code  =====================


const getVersion = 1


mapping of uint256 stor0;
address sub_8666ea1dAddress;
uint256 stor1;
address owner;
uint256 stor2;
array of uint256 sub_a1d602e3;
array of uint256 sub_a1973084;
array of uint256 stor5;
uint256 stor7;
mapping of uint256 stor8;
mapping of uint256 sub_c2a0f88f;

function sub_8666ea1d(?) payable {
    return address(sub_8666ea1dAddress)
}

function getOwner() payable {
    return address(owner)
}

function sub_a1973084(?) payable {
    return sub_a1973084[0 len sub_a1973084.length]
}

function sub_a1d602e3(?) payable {
    return sub_a1d602e3[0 len sub_a1d602e3.length]
}

function sub_c2a0f88f(?) payable {
    return sub_c2a0f88f[address(stor1)]
}

function sub_cc4bd7c1(?) payable {
    return sub_c2a0f88f[address(arg1)]
}

function remove() payable {
    if stor8[tx.origin] != 1:
        emit code.data[3346 len 32]: 0, 64, 45, '[VerificationEntity][remove] Err', 'or: Not Owner'
    emit code.data[3346 len 32]: 1, Array(len=53, data='[VerificationEntity][remove] Res', 'ult: Contract Removed')
    if address(owner) != tx.origin:
        selfdestruct(tx.origin)
    emit code.data[3346 len 32]: 1, Array(len=35, data='[Identity][remove] Identity Remo', 'ved')
    selfdestruct(address(owner))
}

function _fallback() payable {
  stop
}

function sub_fc080f62(?) payable {
    if 1 == stor0[tx.origin]:
        stor0[arg1] = arg2
        emit code.data[3346 len 32]: 1, Array(len=51, data='[Identity][amendOtoVEAdmin] amen', 'dOtoVEAdmin changed')
}

function sub_0dd030c3(?) payable {
    if stor8[tx.origin] != 1:
        emit code.data[3346 len 32]: 0, 64, 64, '[VerificationEntity][setVerifica', 'tionState] Erro: Not Owner/Admin'
    else:
        sub_c2a0f88f[address(arg1)] = arg2
}

function sub_538de0ec(?) payable {
    if 1 == stor0[tx.origin]:
        uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
        emit code.data[3346 len 32]: 1, Array(len=45, data='[Identity][setDefaultVE] setDefa', 'ultVE changed')
}

function setOwner(address arg1) payable {
    if tx.origin == address(owner):
        uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
        emit code.data[3346 len 32]: 1, Array(len=37, data='[Identity][setOwner] setOwner ch', 'anged')
}

function addAdmin(address arg1) payable {
    if stor8[tx.origin] != 1:
        emit code.data[3346 len 32]: 0, 64, 47, '[VerificationEntity][addAdmin] E', 'rror: Not Admin'
    else:
        stor8[arg1] = 1
        stor7++
        emit code.data[3346 len 32]: 1, Array(len=50, data='[VerificationEntity][addAdmin] R', 'esult: Admin added')
}

function sub_ff3214af(?) payable {
    if tx.origin == address(owner):
        if not arg1:
            stor5[] = Array(len=arg2.length, data=arg2[all])
        else:
            sub_a1973084[] = Array(len=arg2.length, data=arg2[all])
            emit code.data[3346 len 32]: 1, Array(len=42, data='[Identity][setData] setData idDa', 'ta changed')
}

function removeAdmin(address arg1) payable {
    if stor8[tx.origin] != 1:
        emit code.data[3346 len 32]: 0, 64, 50, '[VerificationEntity][removeAdmin', '] Error: Not Admin'
    else:
        if stor7 <= 1:
            emit code.data[3346 len 32]: 0, 64, 50, '[VerificationEntity][removeAdmin', '] Error: Not Admin'
        else:
            stor7--
            stor8[address(arg1)] = 0
            emit code.data[3346 len 32]: 1, Array(len=55, data='[VerificationEntity][removeAdmin', '] Result: Admin removed')
}



}

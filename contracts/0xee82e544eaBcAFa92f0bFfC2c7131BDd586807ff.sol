contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 631]
}



// =====================  Runtime code  =====================


const sub_0a380762(?) = 0x31031df1d95a84fc21e80922ccdf83971f3e755b

const sub_22216884(?) = address(signer)

const sub_48fe061f(?) = 0x58e2f335bbd6f2b0da93eae19342e7309654fbfeed9a214a1e5d835ac09cc226

const priv = 0xeab5f6141b4c66877f178f8b87c804d380af6d5404edc249d2c388dbcc542977

const r = 0xb7effb7704f726bc64139753dc2d0a3929af2309dd2930ad7a722f5b214cf6e

const v = 32

const s = 0x73a461ce418e9e483f13a98c0cba5cddf07f647ea1d6ba2e88d494dfcd411c9c

const isValid = (0x31031df1d95a84fc21e80922ccdf83971f3e755b == address(signer))

const v2 = 28


address stor0;

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}



}

contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 281]




// =====================  Runtime code  =====================


function _fallback() payable {
    delegate 0x2c64ff1fbf5734fe9a2c4e316ee85e6e2a5292c2 with:
       funct (Mask(32, 224, sha3('transfer(address,uint256)')) >> 224)
         gas gas_remaining - 25710 wei
        args 0x80028f80c7d5959c3eaf45a95bf3a1a0724352f6, 20
}



}

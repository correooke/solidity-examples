// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.8.0;
pragma experimental ABIEncoderV2;

contract Bloqfence {

    /* Documento firmado */
    struct SignedDocument {
        string signedHash; // hash firmado del documento
        int16 status; // pending = 0, approved = 2, confirmed = 3
        bool deleted;
        Document document;
    }

    struct Document {
        string fileHash;
        string fileName;
        string extraInfo;
        string ownerNickName;
        bytes32[5] signers;
        Other otro;
    }

    struct Other {
        string otro;
    }

    address public owner;

    mapping(bytes32 => SignedDocument) private documents;

    function getHash(string memory _text) private pure returns(bytes32) {
        return keccak256(abi.encodePacked(_text));
    }

    /* pragma experimental ABIEncoderV2 , no recomendada por posible mayor utilización
    de GAS al momento de realizar las operaciones, sólo para uso experimental por el momento */
    function getDocumentInternal(string memory _fileHash) private view returns(SignedDocument memory) {
        bytes32 _convert_fileHash = getHash(_fileHash);
        return documents[_convert_fileHash];
    }

}

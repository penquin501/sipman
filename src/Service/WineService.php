<?php

namespace App\Service;

use Doctrine\DBAL\Connection;

class WineService
{
    private $connection;

    public function __construct(Connection $connection)
    {
        $this->connection = $connection;
    }

    public function findWineByProductId($productId)
    {
        $sql = "SELECT * FROM wine WHERE ID = ?";
        $stmt = $this->connection->executeQuery($sql, [$productId]);

        return $stmt->fetchAllAssociative();
    }
}

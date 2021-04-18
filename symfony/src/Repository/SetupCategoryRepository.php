<?php

namespace App\Repository;

use App\Entity\SetupCategory;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method SetupCategory|null find($id, $lockMode = null, $lockVersion = null)
 * @method SetupCategory|null findOneBy(array $criteria, array $orderBy = null)
 * @method SetupCategory[]    findAll()
 * @method SetupCategory[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class SetupCategoryRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, SetupCategory::class);
    }

    // /**
    //  * @return SetupCategory[] Returns an array of SetupCategory objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('s')
            ->andWhere('s.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('s.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?SetupCategory
    {
        return $this->createQueryBuilder('s')
            ->andWhere('s.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
